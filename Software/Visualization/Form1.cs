using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

// Inventor stuff
using Inventor;
using System.Runtime.InteropServices;

// TwinCAT stuff
using TwinCAT.Ads;
using System.IO;

// Generel Stuff
using System.Xml;       // Read Parameter from file


namespace Visualization
{
    public partial class Form1 : Form
    {
        // Inventor Variables
        Inventor.Application _invApp = default(Inventor.Application);
        Inventor.AssemblyDocument _assDoc = default(Inventor.AssemblyDocument);
        Inventor.UserParameters _userParameters = default(Inventor.UserParameters);

        // TwinCAT Variables
        TwinCAT.Ads.TcAdsClient adsClient = new TwinCAT.Ads.TcAdsClient();
        TwinCAT.Ads.AdsStream dataStream;
        BinaryReader binReader;


        // Parameter List
        List<AdsVariable> adsParameterList = new List<AdsVariable>();
        string AdsKeyWord = "ADS";
        AdsVariable adsAbstand;

        public Form1() {
            InitializeComponent();

            // Get Inventor App
            try
            {
                _invApp = (Inventor.Application)Marshal.GetActiveObject("Inventor.Application");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Start inventor, open an assembly and try it again");
                Close();
                /*       MessageBox.Show(ex.ToString());

                       // Start Inventor if not open
                       try {
                           Type invAppType = Type.GetTypeFromProgID("Inventor.Application");

                           _invApp = (Inventor.Application)System.Activator.CreateInstance(invAppType);
                           _invApp.Visible = true;

                           //Note: if the Inventor session is left running after this
                           //form is closed, there will still an be and Inventor.exe 
                           //running. We will use this Boolean to test in Form1.Designer.cs 
                           //in the dispose method whether or not the Inventor App should
                           //be shut down when the form is closed.
                           _started = true;

                       } catch (Exception ex2) {
                           MessageBox.Show(ex2.ToString());
                           MessageBox.Show("Unable to get or start Inventor");
                       }
                */
            }
        }

        private void btConnectPLC_Click(object sender, EventArgs e)
        {
            if(adsClient.IsConnected == false)          // Connect to TwinCAT
            {
                btConnectPLC.Text = "Disconnect from PLC";

                if (ConnectToPLC() == false)        return;

                // Create ADS-Handles
                int adsOffset = 0;
                int adsLength = 2;

                foreach (var adsParameter in adsParameterList)
                {
                    adsParameter.handle = adsClient.AddDeviceNotification(adsParameter.nameTwinCAT, dataStream, adsOffset, adsLength, AdsTransMode.OnChange, 100, 0, adsParameter.dValue);
                    adsOffset = adsOffset + adsLength;
                }

                adsClient.AdsNotification += new AdsNotificationEventHandler(OnAdsNotification);
            }
            else                // Disconnect
            {
                btConnectPLC.Text = "Connect to PLC";

                adsClient.Disconnect();
                adsClient.Dispose();
            }

            
        }

        private void btWriteParameter_Click(object sender, EventArgs e)
        {
            WriteParameterToInventor();
        }

        private void btReadParameter_Click(object sender, EventArgs e)
        {
            ReadParametersFromFile("Assembly-params.xml");
        }


        private void Form1_FormClosing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            //Resourcen wieder freigeben
            /*      try
                  {
                      adsClient.DeleteVariableHandle(hVar);
                  }
                  catch (Exception err)
                  {
                      MessageBox.Show(err.Message);
                  }
            */
            MessageBox.Show("Close me");
        }



        private void WriteParameterToInventor()
        {
            if (CheckInventorDocument() == false)           return;

            // Write parameters
            foreach (Inventor.UserParameter userParam in _userParameters)
            {
                if (userParam.Comment != AdsKeyWord)        continue;           // Only ADS variables

                AdsVariable found = adsParameterList.Find(i => i.nameInventor == userParam.Name);       // Find parameter in list
                userParam.Expression = found.dValue.ToString();             // Set Value in Inventor
            }
            
            _assDoc.Update();                                               // Update Assembly with new Parameter values
            _assDoc.Rebuild();
        }

        private bool CheckInventorDocument()
        {
            if (_invApp.Documents.Count == 0) return false;
            if (_invApp.ActiveDocumentType != DocumentTypeEnum.kAssemblyDocumentObject) return false;

            _assDoc = (Inventor.AssemblyDocument)_invApp.ActiveDocument;
            _userParameters = _assDoc.ComponentDefinition.Parameters.UserParameters;

            return true;
        }

        private bool ConnectToPLC()
        {
            adsClient = new TwinCAT.Ads.TcAdsClient();
            adsClient.Connect(851);     // instead of 801

            if (adsClient.IsConnected == false)    return false;

            dataStream = new AdsStream(31);
            binReader = new BinaryReader(dataStream, System.Text.Encoding.ASCII);

            return true;
        }


        // Is called when a parameter in TwinCAT changes
        private void OnAdsNotification(object sender, AdsNotificationEventArgs e)
        {
            // Update Value in List
            AdsVariable found = adsParameterList.Find(i => i.handle == e.NotificationHandle);       // Find parameter in list
            int index = adsParameterList.FindIndex(i => i.handle == e.NotificationHandle);
            if (index == -1) return;

            e.DataStream.Position = e.Offset;
            adsParameterList[index].dValue = binReader.ReadInt16();

            // Write new Value to Inventor
            WriteParameterToInventor();
        }

        private int ReadParametersFromFile(string file)
        {
            adsParameterList.Clear();

            XmlDocument doc = new XmlDocument();
            doc.Load(file);

            XmlNode nodes =  doc.DocumentElement.SelectSingleNode("/ParamWithValueList/parameters");

            foreach (XmlNode node in nodes.ChildNodes) {
                string nodeCommend = node.SelectSingleNode("comment").InnerText;

                if (nodeCommend == AdsKeyWord) {
                    string nodeName = node.SelectSingleNode("name").InnerText;
                    adsParameterList.Add(new AdsVariable(nodeName));
                }
            }


            MessageBox.Show("Found " + adsParameterList.Count + " Parameters");
            return 0;
        }


    }
}
