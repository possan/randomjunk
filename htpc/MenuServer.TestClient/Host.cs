using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.TestClient
{
    class Host
    {
        static IHost _current;

        public static IHost Current
        {
            get { return _current; }
            set { _current = value; }
        }
    }
}
