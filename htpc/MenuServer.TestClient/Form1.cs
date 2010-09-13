using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Net;
using MenuServer.TestClient.Data;
using MenuServer.TestClient.Menus;

namespace MenuServer.TestClient
{
    public partial class Form1 : Form, IHost
    {
        public Form1()
        {
            InitializeComponent();
            Host.Current = this;
        }

        void BindPage(Data.Page page)
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

        private void Form1_Load(object sender, EventArgs e)
        {
            tbHost.Text = "http://192.168.0.100:8001/";
            BindPage(null);
            GoTo("/", true);
        }

        void GoBack()
        {
            if (ddHistory.Items.Count > 1)
            {
                string last = ddHistory.Items[ddHistory.Items.Count - 2].ToString();
                ddHistory.Items.RemoveAt(ddHistory.Items.Count - 1);
                tbPath.Text = last;
                GoTo(last,false);
            }
            else
            {
                tbPath.Text = "/";
                GoTo("/",false);
            }
        }

        bool goingforward = false;
        
        void GoTo(string path, bool appendtohistory)
        {
            if (appendtohistory)
                ddHistory.Items.Add(path);
            else
                ddHistory.Items.Clear();
            
            goingforward = appendtohistory;

            tbPath.Text = path;
            BeginLoadPage(path);
        }

        private void buConnect_Click(object sender, EventArgs e)
        {
            string path = tbPath.Text;
            BeginLoadPage(path);
        }

        private void buGo_Click(object sender, EventArgs e)
        {
            string path = tbPath.Text;
            GoTo(path, false);
        }

        private void buBack_Click(object sender, EventArgs e)
        {
            GoBack();
        }
         

        private void cbPath_KeyDown(object sender, KeyEventArgs e)
        {
        }


        private void cbPath_SelectedIndexChanged(object sender, EventArgs e)
        {
            string path = ddHistory.Items[ddHistory.SelectedIndex].ToString();
            int idx = ddHistory.SelectedIndex;
            for (int j = ddHistory.Items.Count - 1; j >= idx; j--)
                ddHistory.Items.RemoveAt(j);
            tbPath.Text = path;
            BeginLoadPage(path);
        }


        void BeginLoadPage(string path)
        {
            laTitle.Text = "Loading...";
            laText.Text = "Loading path: " + path;
            lbItems.Items.Clear();

            Application.DoEvents();

            string url = tbHost.Text;
            if (url.EndsWith("/"))
                url = url.Substring(0, url.Length - 1);
            url += path;

            Page page = null;
            try
            {
                WebClient wc = new WebClient();
                string respo = wc.DownloadString(url);

                page = new Page();
                page.ParseXML(respo);
            }
            catch (Exception z)
            {
                MessageBox.Show(z.ToString());
            }

            if (page != null)
            {
                RandomColorPage rcp = new RandomColorPage();
                rcp.CreateControl();
                rcp.BindPage(page);
                if (goingforward)
                    ucAnimator.BeginAnimateNext(rcp);
                else
                    ucAnimator.BeginAnimateBack(rcp);
            }
            else
            {
                if (goingforward)
                    ucAnimator.BeginAnimateNext(null);
                else
                    ucAnimator.BeginAnimateBack(null);
            }
            // BindPage(page);

        }

        private void tbPath_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
            {
                GoTo(ddHistory.Text, false);
            }
        }

        private void lvActions_DoubleClick(object sender, EventArgs e)
        {
            if (lvActions.SelectedItems.Count > 0)
            {
            }
        }

        private void buAnim1_Click(object sender, EventArgs e)
        {
            RandomColorPage page = new RandomColorPage();
            ucAnimator.BeginAnimateNext(page);
        }

        private void buAnim2_Click(object sender, EventArgs e)
        {
            RandomColorPage page = new RandomColorPage();
            ucAnimator.BeginAnimateBack(page);

        }

        private void buAnim3_Click(object sender, EventArgs e)
        {
            RandomColorPage page = new RandomColorPage();
            ucAnimator.BeginAnimateReplace(page);
        }

        private void buAnim4_Click(object sender, EventArgs e)
        {
            ucAnimator.BeginAnimateNext(null);
        }

        private void buAnim5_Click(object sender, EventArgs e)
        {
            ucAnimator.BeginAnimateBack(null);
        }

        private void buAnim6_Click(object sender, EventArgs e)
        {
            ucAnimator.BeginAnimateReplace(null);

        }





        #region IHost Members

        public void Action(string action)
        { 
            // MessageBox.Show("Handling command:\n\n" + item.Command, "Debug");
            if (action.StartsWith("enter:"))
            {
                string path = action.Substring(6);
                GoTo(path, true);
            }
            else if (action.StartsWith("leave:"))
            {
                string path = action.Substring(6);
                GoTo(path, false);
            }
            else if (action == "leave")
            {
                GoBack();
            }
            else if (action.StartsWith("goto:"))
            {
                string path = action.Substring(5);
                GoTo(path, false);
            }
            else
            {
                MessageBox.Show("Unable to handle command:\n\n" + action, "Warning");
            } 
        }

        #endregion
    }
}
