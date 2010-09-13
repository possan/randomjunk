using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace dxshowtest1
{
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main(string[] args)
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);


            Form1 f1 = new Form1();
            f1.Filename = "c:\\temp\\beckscen2.avi";
            if (args.Length > 0)
                f1.Filename = args[0];
            Application.Run(f1);
        }
    }
}
