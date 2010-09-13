using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Types
{
    public class BaseItem : IItem
    {
        string _Icon;
        string _Title;
        string _Command;

        public string Icon
        {
            get { return _Icon; }
            set { _Icon = value; }
        }

        public string Text
        {
            get { return _Title; }
            set { _Title = value; }
        }

        public string Command
        {
            get { return _Command; }
            set { _Command = value; }
        }

        public BaseItem()
        {
            Icon = "";
            Text = "";
            Command = "";
        }

        public BaseItem(string text, string cmd)
            : this()
        {
            Text = text;
            Command = cmd;
        }

        public BaseItem (string icon, string text, string cmd) : this(text,cmd)
        {
            Icon = icon;
        }
    }
}
