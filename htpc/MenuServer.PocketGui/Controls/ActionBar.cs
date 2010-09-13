using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using MenuServer.PocketGui.Data;
using MenuServer.PocketGui.Menus;

namespace MenuServer.PocketGui.Controls
{
    public partial class ActionBar : ListBox
    {
        public ActionBar() : base()
        {
            BackColor = Color.Black;
            ForeColor = Color.White; 
            this.SelectedIndexChanged += new EventHandler(Itemlist_SelectedIndexChanged);
        }

        void Itemlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SelectedItem != null)
            {
                Item item = SelectedItem as Item;
                Host.Current.Action(item.Command);
            }
        }

        public void SetItems(List<Item> menuitems)
        {
            Items.Clear();
            SelectedIndex = -1;
            for( int j=0; j<menuitems.Count; j++ )
                Items.Add(menuitems[j]);
        //    SelectedItem = null;
        }
    }
}
