using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Visualization
{
    internal class AdsVariable
    {
        public int handle;                  // EtherCAT Handle
        public string nameTwinCAT;          // Bezeichnung in TwinCAT
        public string nameInventor;         // Bezeichnung in Inventor

       // public bool bValue = false;
        public float dValue = 0;
       // public string stringValue = "";


       // public bool hasChanged = false;     // Variable wurde verandert und muss gelesen/geschrieben werden


        public AdsVariable(string bezeichnung)
        {
            nameInventor = bezeichnung;
            nameTwinCAT = "Main." + bezeichnung;          // Bezeichnung mit GVL erweitern
        }
    }
}
