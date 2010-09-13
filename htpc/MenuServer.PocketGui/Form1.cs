using System;
using System.Linq;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MenuServer.PocketGui.Menus;
using MenuServer.PocketGui.Data;
using System.Net;
using System.IO;
using MenuServer.PocketGui.Data;

namespace MenuServer.PocketGui
{
    public partial class Form1 : Form, IHost
    {
        public Form1()
        {
            InitializeComponent();
            _historyitems = new List<HistoryItem>();
            _historyposition = 0;
            for (int j = 0; j < 100; j++)
                _historyitems.Add(new HistoryItem());
        }

        #region History management

        int _historyposition;
        List<HistoryItem> _historyitems;

        HistoryItem GetHistoryStackItem(int delta)
        {
            HistoryItem current = null;
            int id = _historyposition + delta;
            //  if (id < 0)
            //      id = 0;
            //  if (id > _historyposition - 1)
            //      id = _historyposition - 1;
            if (id >= 0 && id < _historyitems.Count)
                current = _historyitems[id];
            return current;
        }

        #endregion

        #region Timer and animation

        int timercounter;
        int timerdirection;

        Control _animpagebehind = null;
        Control _animpageontop = null;

        float maptopercent(float t, float tmin, float tmax)
        {
            if (t < tmin)
                t = tmin;
            if (t > tmax)
                t = tmax;
            float pct = (t - tmin) / (tmax - tmin);
            return pct;
        }

        float maptovalue(float t, float omin, float omax)
        {
            float o = omin + (t * (omax - omin));
            return o;
        }

        float ease(float t)
        {
            return t;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (timercounter <= 40)
            {
                float pct = (float)timercounter / 40.0f;
                laStatus.Text = "timer=" + timercounter;

                float t1 = maptopercent(timercounter, 0.0f, 30.0f);
                float t2 = maptopercent(timercounter, 10.0f, 40.0f);

                t1 = ease(t1);
                t2 = ease(t2);

                int xontop = 240;
                int xbehnd = -240;

                if (timerdirection == -1)
                {
                    xontop = (int)maptovalue(t1, 240.0f, 0.0f);
                    xbehnd = (int)maptovalue(t2, 0.0f, -240.0f);
                }
                else if (timerdirection == 1)
                {
                    xontop = (int)maptovalue(t1, 240.0f, 0.0f);
                    xbehnd = (int)maptovalue(t2, 0.0f, -240.0f);
                }

                if (_animpageontop != null) _animpageontop.Left = xontop;
                if (_animpagebehind != null) _animpagebehind.Left = xbehnd;

                timercounter++;
            }
            else
            {
                laStatus.Text = "timer done, swap pages.";
                Application.DoEvents();

                timer1.Enabled = false;

                if (_animpagebehind != null)
                {
                    // if (panel1.Controls.Contains(_animpagebehind))
                    //       panel1.Controls.Remove(_animpagebehind);
                    _animpagebehind.Visible = false;
                }
                // beroende på timerdirection.... kolla om vi ska pusha en ny on top eller ersätta den en nivå under

                if (timerdirection == 1)
                {
                    // vi har gått djupare till en ny sida, pusha den överst
                    //int idx = _historyposition;
                    //  _historyitems[ idx ].Path = 
                }
                else if (timerdirection == -1)
                {
                    // vi har gått tillbaka till en nyskapad sida
                }
            }
        }

        HistoryItem BeginSwapPage(Control ctrl, bool forward)
        {
            HistoryItem ret = null;

            HistoryItem current = null;
            if (_historyposition >= 0 && _historyposition < _historyitems.Count)
                current = _historyitems[_historyposition];

            if (forward)
            {
                HistoryItem oldold = null;
                int idx3 = _historyposition - 1;
                if (idx3 >= 0 && idx3 < _historyitems.Count)
                    oldold = _historyitems[idx3];

                if (oldold != null)
                    if (oldold.ControlCache != null)
                        oldold.ControlCache.Visible = false;

                HistoryItem next = null;
                int idx2 = _historyposition + 1;
                if (idx2 >= 0 && idx2 < _historyitems.Count)
                    next = _historyitems[idx2];
                _historyposition++;

                if (next != null)
                {
                    //    MessageBox.Show("swapping forward to: " + next.Path);

                    //  if (next.ControlCache != null)
                    //        if (panel1.Controls.Contains(next.ControlCache))
                    //              panel1.Controls.Remove(next.ControlCache);

                    next.ControlCache = ctrl;
                }

                _animpagebehind = null;
                if (current != null)
                    _animpagebehind = current.ControlCache;

                _animpageontop = ctrl;
                if (_animpageontop != null)
                {
                    _animpageontop.Visible = true;
                    if (!panel1.Controls.Contains(_animpageontop))
                        panel1.Controls.Add(_animpageontop);

                    _animpageontop.BringToFront();
                }

                if (_animpagebehind != null)
                    _animpagebehind.Left = 0;

                if (_animpageontop != null)
                    _animpageontop.Left = 240;

                ret = next;
            }
            else
            {
                HistoryItem last = null;
                int idx2 = _historyposition - 1;
                if (idx2 < 0)
                    idx2 = 0;
                if (idx2 >= 0 && idx2 < _historyitems.Count)
                    last = _historyitems[idx2];


                _animpageontop = null;
                if (last != null)
                {
                    //      MessageBox.Show("swapping back to: " + last.Path);
                    _animpageontop = last.ControlCache;
                }

                if (current != null)
                    _animpagebehind = current.ControlCache;

                if (_animpagebehind != null)
                    _animpagebehind.Left = -240;

                if (_animpageontop != null)
                    _animpageontop.Left = 0;

                ret = last;
            }

            timercounter = 0;
            timerdirection = forward ? 1 : -1;
            timer1.Enabled = true;
            timer1.Interval = 10;

            return ret;
        }

        #endregion

        #region Menu actions

        private void miOptions_Click(object sender, EventArgs e)
        {
            OptionsPage op = new OptionsPage();
            PushHistory(op);
            BeginSwapPage(op, true);
        }

        private void miExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void miHome_Click(object sender, EventArgs e)
        {
            Action("goto:/");
        }

        private void miBack_Click(object sender, EventArgs e)
        {
            Action("leave");
        }
        #endregion

        private void Form1_Load(object sender, EventArgs e)
        {
            Host.Current = this;
            Action("goto:/");
        }




        Page LoadPage(string path)
        {
            laStatus.Text = "Loading...";
            Application.DoEvents();

            string url = Config.Hostname;
            if (url.EndsWith("/"))
                url = url.Substring(0, url.Length - 1);
            url += path;

            Page p = null;
            try
            {
                WebRequest request = System.Net.WebRequest.Create(url);
                laStatus.Text = "Created request...";
                Application.DoEvents();
                request.Timeout = 3000;

                WebResponse response = request.GetResponse();

                laStatus.Text = "Got response (" + response.ContentLength + ")";
                Application.DoEvents();

                Stream str = response.GetResponseStream();
                laStatus.Text = "Got stream...";
                Application.DoEvents();

                BinaryReader br = new BinaryReader(str);

                byte[] bytes = br.ReadBytes((int)response.ContentLength);

                laStatus.Text = "Got " + bytes.Length + " bytes...";
                Application.DoEvents();

                str.Close();
                str.Flush();

                string tmp = Encoding.UTF8.GetString(bytes, 0, bytes.Length);

                p = new Page();
                p.ParseXML(tmp);

                laStatus.Text = "Loaded.";
                Application.DoEvents();
            }
            catch (Exception z)
            {
                laStatus.Text = "Error";
                Application.DoEvents();

                MessageBox.Show(z.ToString());
            }

            return p;
        }

        Control CreateMenu(Page p)
        {
            Menus.DefaultMenu mp = new Menus.DefaultMenu();
            mp.Bind(p);
            return mp;
        }

        Control PopHistory(bool kill)
        {
            Control ret = null;
            /*
            if (kill)
            {
                HistoryItem topmost = GetHistoryStackItem(0);
                if (topmost != null)
                {
                    if (panel1.Controls.Contains(topmost.ControlCache))
                        panel1.Controls.Remove(topmost.ControlCache);
                    // topmost.ControlCache.Dispose();
                }
            }


            if (_pages.Count > 0)
                _pages.RemoveAt(_pages.Count - 1);

            if (_pages.Count > 0)
                ret = _pages[_pages.Count - 1];
            */
            return ret;
        }

        void PushHistory(Control c)
        {
            /*
            if (c != null)
            {
                // flush queue
                for (int j = _pages.Count - 1; j >= 0; j--)
                {
                    if (panel1.Controls.Contains(_pages[j]))
                        panel1.Controls.Remove(_pages[j]);
                    _pages[j].Dispose();
                    _pages.RemoveAt(j);
                }

                while (_pageselections.Count > _pages.Count)
                    _pageselections.RemoveAt(_pages.Count);
               
                _pages.Add(c);
                _pageselections.Add(0);

                panel1.Controls.Add(c);
                c.Left = 0;
                c.Top = 0;
            } */
        }




        #region IHost Members

        public int GetCurrentSelectionIndex()
        {
            int r = 0;
            try
            {
                r = int.Parse(GetCurrentSelectionValue());
            }
            catch (Exception e)
            {

            }
            return r;
        }

        public string GetCurrentSelectionValue()
        {
            if (_historyposition >= 0 && _historyposition < _historyitems.Count)
                return _historyitems[_historyposition].LastSelection;
            return "";
        }

        public void RememberCurrentSelectionIndex(int sel)
        {
            _historyitems[_historyposition].LastSelection = sel.ToString();
        }


        public void RememberCurrentSelectionValue(string val)
        {
            _historyitems[_historyposition].LastSelection = val;
        }



        public void Action(string command)
        {
            if (command == "leave")
            {
                laStatus.Text = "Backing up...";

                HistoryItem backto = GetHistoryStackItem(-1);
                // Control c = PopHistory(true);
                if (backto != null)
                {
                    //      MessageBox.Show("back to: " + backto.Path);
                    BeginSwapPage(backto.ControlCache, false);
                }
                else
                    BeginSwapPage(null, false);

            }
            else if (command.StartsWith("leave:"))
            {
                string path = command.Substring(6);
                Page p = LoadPage(path);
                if (p != null)
                {
                    Control c = CreateMenu(p);
                    if (c != null)
                    {
                        //   PopHistory(true);
                        //   PopHistory(true);
                        //   PushHistory(c);
                        BeginSwapPage(c, false);
                    }
                }
            }
            else if (command.StartsWith("enter:"))
            {
                string path = command.Substring(6);
                Page p = LoadPage(path);
                if (p != null)
                {
                    Control c = CreateMenu(p);
                    if (c != null)
                    {
                        // PushHistory(c);
                        HistoryItem history = BeginSwapPage(c, true);
                        history.Path = path;
                        history.PageCache = p;
                    }
                }
            }
            else if (command.StartsWith("goto:"))
            {
                string path = command.Substring(5);
                Page p = LoadPage(path);
                if (p != null)
                {
                    Control c = CreateMenu(p);
                    if (c != null)
                    {
                        /*
                        while (_pages.Count > 0)
                            PopHistory(true);
                        PushHistory(c);
                        */
                        // BeginSwapPage(c, true);

                        HistoryItem history = BeginSwapPage(c, false);
                        if (history != null)
                        {
                            history.Path = path;
                            history.PageCache = p;
                            // _historyposition = 0;
                        }
                    }
                }
            }

        }

        #endregion


    }
}