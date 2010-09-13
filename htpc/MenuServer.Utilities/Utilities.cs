using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using MenuServer.Types;

namespace MenuServer
{
    public class Utilities
    {
        static void BuildPageTo(IPage page, XmlNode parent, XmlDocument doc)
        {
            XmlNode pagenode = doc.CreateElement("page");
            parent.AppendChild(pagenode);

            XmlNode titlenode = doc.CreateElement("title");
            titlenode.InnerText = page.Title;
            pagenode.AppendChild(titlenode);

            XmlNode textnode = doc.CreateElement("text");
            titlenode.InnerText = page.Text;
            pagenode.AppendChild(textnode);

            XmlNode iconnode = doc.CreateElement("icon");
            titlenode.InnerText = page.Icon;
            pagenode.AppendChild(iconnode);

            XmlNode rendermodenode = doc.CreateElement("rendermode");
            rendermodenode.InnerText = page.RenderMode;
            pagenode.AppendChild(rendermodenode);

            XmlNode itemsnode = doc.CreateElement("items");
            pagenode.AppendChild(itemsnode);

            for (int j = 0; j < page.Items.Count; j++)
            {
                XmlNode itemnode = doc.CreateElement("item");
                itemsnode.AppendChild(titlenode);

                XmlAttribute commandattribute = doc.CreateAttribute("command");
                commandattribute.Value = page.Items[j].Command;
                itemnode.Attributes.Append(commandattribute);

                XmlText textnode2 = doc.CreateTextNode(page.Items[j].Text);
                itemnode.AppendChild(textnode2);

            }

            XmlNode actionsnode = doc.CreateElement("actions");
            pagenode.AppendChild(actionsnode);

            for (int j = 0; j < page.Actions.Count; j++)
            {
                XmlNode itemnode = doc.CreateElement("item");
                itemsnode.AppendChild(titlenode);

                XmlAttribute commandattribute = doc.CreateAttribute("command");
                commandattribute.Value = page.Actions[j].Command;
                itemnode.Attributes.Append(commandattribute);

                XmlAttribute iconattribute = doc.CreateAttribute("command");
                iconattribute.Value = page.Actions[j].Icon;
                itemnode.Attributes.Append(iconattribute);

                XmlText textnode2 = doc.CreateTextNode(page.Actions[j].Text);
                itemnode.AppendChild(textnode2);
            }
        }

        public static string BuildPage(IPage page)
        {
            XmlDocument doc = new XmlDocument();
            XmlDeclaration decl = doc.CreateXmlDeclaration("1.0", "UTF-8", "yes");
            doc.AppendChild(decl);
            BuildPageTo(page, doc, doc);
            return doc.OuterXml;
        }
    }
}
