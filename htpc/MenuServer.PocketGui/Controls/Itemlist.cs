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
    public partial class Itemlist : ListBox
    {
        public Itemlist()
            : base()
        {
            BackColor = Color.Black;
            ForeColor = Color.White;
            this.SelectedIndexChanged += new EventHandler(Itemlist_SelectedIndexChanged);
        }

        bool in_set = false;

        void Itemlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!in_set)
            {
                if (SelectedItem != null)
                {
                    Item item = SelectedItem as Item;
                    Host.Current.RememberCurrentSelectionIndex(SelectedIndex);
                    Host.Current.Action(item.Command);
                }
            }
        }

        public void SetItems(List<Item> menuitems)
        {
            in_set = true;
            Items.Clear();
            SelectedIndex = -1;
            for (int j = 0; j < menuitems.Count; j++)
                Items.Add(menuitems[j]);
            //      SelectedItem = null;

            try
            {
                SelectedIndex = Host.Current.GetCurrentSelectionIndex();
            }
            catch (Exception z)
            {
            }
            in_set = false;
        }
    }
}
