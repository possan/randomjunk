using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using MenuServer.PocketGui.Data;

namespace MenuServer.PocketGui.Menus
{
    public partial class NotificationMenu : UserControl, IMenu
    {
        public NotificationMenu()
        {
            InitializeComponent();
        }

        #region IMenu Members

        public void Bind(Page page)
        {
        }

        #endregion
    }
}
