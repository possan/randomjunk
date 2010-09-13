using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.PocketGui.Menus
{
    public class Host
    {
        static IHost _cur = null;

        public static IHost Current
        {
            get
            {
                return _cur;
            }
            set
            {
                _cur = value;
            }
        }
    }
}
