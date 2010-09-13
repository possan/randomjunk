using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Types
{
    public class BasePage : IPage
    {


        string _Icon;

        public string Icon
        {
            get { return _Icon; }
            set { _Icon = value; }
        }
        string _Title;

        string _RenderMode;

        public string RenderMode
        {
            get { return _RenderMode; }
            set { _RenderMode = value; }
        }

        public string Title
        {
            get { return _Title; }
            set { _Title = value; }
        }
        string _Text;


        public string Text
        {
            get { return _Text; }
            set { _Text = value; }
        }
        List<IItem> _Actions;

        public List<IItem> Actions
        {
            get { return _Actions; }
            set { _Actions = value; }
        }
        List<IItem> _Items;

        public List<IItem> Items
        {
            get { return _Items; }
            set { _Items = value; }
        }

        public BasePage()
        {
            Icon = "";
            Title = "";
            Text = ""; 
            RenderMode = "default";
            Actions = new List<IItem>();
            Items = new List<IItem>();
        }

    }
}
