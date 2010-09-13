using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.PocketGui
{
    public class Config
    {
        static string _host;

        public static string Hostname
        {
            get
            {
                return _host;//  "http://localhost:8001";
            }
            set
            {
                _host = value;
            }
        }
    }
}
