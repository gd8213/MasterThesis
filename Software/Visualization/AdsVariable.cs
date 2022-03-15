using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Visualization
{
    internal class AdsVariable
    {
        public int handle;
        public string designation;          // Bezeichnung in TwinCAT

        public bool bValue = false;
        public double dValue = 0;
        public string stringValue = "";


        public bool hasChanged = false;     // Variable wurde verandert und muss gelesen/geschrieben werden


        public AdsVariable(string bezeichnung)
        {
            designation = "AdsVariables." + bezeichnung;          // Bezeichnung mit GVL erweitern
        }
    }
}
