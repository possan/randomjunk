using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;
using MenuServer.TestClient.Data;

namespace MenuServer.TestClient.Menus
{
    public partial class RandomColorPage : UserControl
    {
        public RandomColorPage()
        {
            InitializeComponent();
            Load += new EventHandler(RandomColorPage_Load);
        }

        void RandomColorPage_Load(object sender, EventArgs e)
        {
            Random r = new Random();

            BackColor = Color.Black;// Color.FromArgb(r.Next() % 255, r.Next() % 255, r.Next() % 255);
            laTitle.BackColor = BackColor;
            laText.BackColor = BackColor;
            lvActions.BackColor = BackColor;
            lbItems.BackColor = BackColor;
            laRM.BackColor = BackColor;

            Width = 240;
            Height = 320;

            laTitle.Text = "";
            laText.Text = "";
            laRM.Text = "";

            lbItems.Items.Clear();
            lvActions.Items.Clear();

        }

        public void BindPage(Page page)
        {
            laTitle.Text = "";
            laText.Text = "";
            laRM.Text = "";

            lbItems.Items.Clear();
            lvActions.Items.Clear();

            if (page != null)
            {
                laTitle.Text = page.Title;

                laText.Text = page.Text;

                laRM.Text = "rendermode=" + page.RenderMode + ", icon=" + page.Icon;

                for (int j = 0; j < page.MenuItems.Count; j++)
                {
                    lbItems.Items.Add(page.MenuItems[j]);
                }

                for (int j = 0; j < page.Actions.Count; j++)
                {
                    // lbActions.Items.Add(page.Actions[j]);

                    ListViewItem itm = new ListViewItem();
                    itm.Tag = page.Actions[j];
                    itm.Text = page.Actions[j].Text;
                    lvActions.Items.Add(itm);
                }
            }
        }

        private void lbItems_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void lvActions_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void lbItems_DoubleClick(object sender, EventArgs e)
        {
            if (lbItems.SelectedIndex >= 0)
            {
                Item item = lbItems.Items[lbItems.SelectedIndex] as Item;
                if (item != null)
                    Host.Current.Action(item.Command);
            }
        }

        private void lvActions_DoubleClick(object sender, EventArgs e)
        {
            if (lvActions.SelectedItems.Count > 0)
            {
                Item item = lvActions.SelectedItems[0].Tag as Item;
                if (item != null)
                    Host.Current.Action(item.Command);
            }
        }
        /*
       void HandleItemClick(Item item)
       {
           // MessageBox.Show("Handling command:\n\n" + item.Command, "Debug");
           if (item.Command.StartsWith("enter:"))
           {
               string path = item.Command.Substring(6);
               GoTo(path, true);
           }
           else if (item.Command.StartsWith("leave:"))
           {
               string path = item.Command.Substring(6);
               GoTo(path, false);
           }
           else if (item.Command == "leave")
           {
               GoBack();
           }
           else if (item.Command.StartsWith("goto:"))
           {
               string path = item.Command.Substring(5);
               GoTo(path, false);
           }
           else
           {
               MessageBox.Show("Unable to handle command:\n\n" + item.Command, "Warning");
           }
       }*/
    }
}
