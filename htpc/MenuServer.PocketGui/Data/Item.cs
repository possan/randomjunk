using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.PocketGui.Data
{
    public class Item
    {
        public string Icon;

        public string Text;

        public string Command;

        public Item()
        {
            Icon = "";
            Text = "";
            Command = "";
        }

        public override string ToString()
        {
            return Text; 
        }

    }
}
