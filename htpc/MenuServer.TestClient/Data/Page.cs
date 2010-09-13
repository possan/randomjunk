using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;

namespace MenuServer.TestClient.Data
{
    public class Page
    {
        public string Icon;
        public string Title;
        public string Text;
        public string RenderMode;
        public int CurrentSelection;
        public List<Item> MenuItems;
        public List<Item> Actions;

        public Page()
        {
            Icon = "";
            Title = "";
            Text = "";
            RenderMode = "";

            MenuItems = new List<Item>();
            Actions = new List<Item>();
            CurrentSelection = 0;
        }

        public bool ParseXML(string inputxml)
        {
            bool ret = false;

            //    try
            {
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(inputxml);
                ret = ParseXML(doc);
            }
            //  catch (Exception z)
            {
            }

            return ret;
        }

        public bool ParseXML(XmlNode rootxml)
        {
            XmlNode n, n2;
            XmlAttribute a;
            XmlNodeList nl;

            n = rootxml.SelectSingleNode("/page/title");
            if (n != null)
                Title = n.InnerText;

            n = rootxml.SelectSingleNode("/page/text");
            if (n != null)
                Text = n.InnerText;

            n = rootxml.SelectSingleNode("/page/icon");
            if (n != null)
                Icon = n.InnerText;

            n = rootxml.SelectSingleNode("/page/rendermode");
            if (n != null)
                RenderMode = n.InnerText;

            nl = rootxml.SelectNodes("/page/items/item");
            if (nl != null)
            {
                for (int j = 0; j < nl.Count; j++)
                {
                    Item i = new Item();

                    n = nl[j];

                    a = n.Attributes["command"];
                    if (a != null)
                        i.Command = a.Value;

                    a = n.Attributes["icon"];
                    if (a != null)
                        i.Icon = a.Value;

                    i.Text = n.InnerText;

                    MenuItems.Add(i);
                }
            }

            nl = rootxml.SelectNodes("/page/actions/action");
            if (nl != null)
            {
                for (int j = 0; j < nl.Count; j++)
                {
                    Item i = new Item();

                    n = nl[j];

                    a = n.Attributes["command"];
                    if (a != null)
                        i.Command = a.Value;

                    a = n.Attributes["icon"];
                    if (a != null)
                        i.Icon = a.Value;

                    i.Text = n.InnerText;

                    Actions.Add(i);
                }
            }

            return false;
        }
    }
}
