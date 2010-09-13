using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using MenuServer.PocketGui.Menus;

namespace MenuServer.PocketGui
{
    public partial class OptionsPage : UserControl
    {
        public OptionsPage()
        {
            InitializeComponent();
        }

        private void buSave_Click(object sender, EventArgs e)
        {
            Host.Current.Action("leave");
        }
    }
}
