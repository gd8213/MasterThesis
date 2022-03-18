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
        }

        private void btWriteParameter_Click(object sender, EventArgs e)
        {
            WriteParameterToInventor();
        }

        private void btReadParameter_Click(object sender, EventArgs e)
        {
            ReadParametersFromFile("Assembly-params.xml");
        }

        private void btConnectInventor_Click(object sender, EventArgs e)
        {
            ConnectToInventor();
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
            if (_invApp == null)           return;

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

        private bool ConnectToInventor()
        {
            // Get Inventor App
            try
            {
                _invApp = (Inventor.Application)Marshal.GetActiveObject("Inventor.Application");
            }
            catch (Exception ex)
            {
                MessageBox.Show("Start inventor, open an assembly and try it again");
                return false;
            }

            if (CheckInventorDocument() == false)
            {
                MessageBox.Show("Start inventor, open an assembly and try it again");
                _invApp = null;
                return false;
            }

            ReadParametersFromInventor();
            MessageBox.Show("Connected succesfully and added " + adsParameterList.Count.ToString() + " Parameters.");
            return true;
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
            adsParameterList[index].dValue = binReader.ReadSingle();

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

        private int ReadParametersFromInventor()
        {
            if (_invApp == null) return -1;

            adsParameterList.Clear();
            foreach (Inventor.UserParameter parameter in _userParameters)
            {
                if (parameter.Comment == AdsKeyWord)
                {
                    adsParameterList.Add(new AdsVariable(parameter.Name));
                }
            }

            return adsParameterList.Count;
        }

        private void btConnectPLC_Click_1(object sender, EventArgs e)
        {
            if (adsClient.IsConnected == false)          // Connect to TwinCAT
            {
                btConnectPLC.Text = "Disconnect from PLC";

                if (ConnectToPLC() == false) return;

                // Create ADS-Handles
                int adsOffset = 0;      // Starting Offset
                int adsLength = 4;      // Size of Real

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
    }
}
