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


namespace Visualization
{
    public partial class Form1 : Form
    {
        // Inventor Variables
        Inventor.Application _invApp = default(Inventor.Application);
        Inventor.AssemblyDocument _assDoc = default(Inventor.AssemblyDocument);
        Inventor.UserParameters _userParameters = default(Inventor.UserParameters);

        // TwinCAT Variables
        TwinCAT.Ads.TcAdsClient adsClient;
        TwinCAT.Ads.AdsStream dataStream;
        BinaryReader binReader;

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
            bool connected = ConnectToPLC();

            adsAbstand = new AdsVariable("adsAbstand");
            adsAbstand.handle = adsClient.AddDeviceNotification(adsAbstand.designation, dataStream, 0, 2, AdsTransMode.OnChange, 100, 0, adsAbstand.dValue);


            adsClient.AdsNotification += new AdsNotificationEventHandler(OnAdsNotification);
        }

        private void btWriteParameter_Click(object sender, EventArgs e)
        {
            WriteParameterToInventor();
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
            adsClient.Dispose();
        }



        private void WriteParameterToInventor()
        {
            if (CheckInventorDocument() == false) return;

            // Write parameters
            foreach (Inventor.UserParameter parameter in _userParameters)
            {
                if (parameter.Name == "myAbs") {
                    parameter.Expression = adsAbstand.dValue.ToString();
                } else {
                    parameter.Value = 12;
                    parameter.Expression = "1";
                    string name = parameter.Name;
                }
                
            }

            // Update Assembly with new Parameter values
            _assDoc.Update();       
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


        // Wird aufgerufen wenn ein Read-Bool im TwinCAT den Status wechselt
        private void OnAdsNotification(object sender, AdsNotificationEventArgs e)
        {
            if (adsAbstand.handle == e.NotificationHandle)
            {
                e.DataStream.Position = e.Offset;
                adsAbstand.dValue = binReader.ReadInt16();
                adsAbstand.hasChanged = true;
            }

            WriteParameterToInventor();
        }



    }
}
