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
    public partial class DefaultMenu : UserControl, IMenu
    {
        public DefaultMenu()
        {
            InitializeComponent();
        }

        #region IMenu Members

        public void Bind(Page page)
        {
            laTitle.Text = page.Title;
            ucItems.SetItems(page.MenuItems);
            ucActions.SetItems(page.Actions);
        }

        #endregion

    }
}
