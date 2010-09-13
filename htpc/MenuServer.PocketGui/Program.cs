using System;
using System.Linq;
using System.Collections.Generic;
using System.Windows.Forms;

namespace MenuServer.PocketGui
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [MTAThread]
        static void Main()
        {
            // ladda configgen

            Config.Hostname = "http://192.168.0.100:8001";

            Application.Run(new Form1());
        }
    }
}