using System;
using System.Collections.Generic;
using System.Text;
using System.Xml;
using MenuServer.Types;

namespace MenuServer.Server
{
    public class PageSerializer
    {
        static void BuildPage(IPage page, XmlNode parent, XmlDocument doc)
        {
            XmlNode pagenode = doc.CreateElement("page");
            parent.AppendChild(pagenode);

            XmlNode titlenode = doc.CreateElement("title");
            titlenode.AppendChild(doc.CreateTextNode(page.Title));
            pagenode.AppendChild(titlenode);

            XmlNode textnode = doc.CreateElement("text");
            textnode.AppendChild(doc.CreateTextNode(page.Text));
            pagenode.AppendChild(textnode);

            XmlNode iconnode = doc.CreateElement("icon");
            iconnode.AppendChild(doc.CreateTextNode(page.Icon));
            pagenode.AppendChild(iconnode);

            XmlNode rendermodenode = doc.CreateElement("rendermode");
            rendermodenode.AppendChild(doc.CreateTextNode(page.RenderMode));
            pagenode.AppendChild(rendermodenode);

            XmlNode itemsnode = doc.CreateElement("items");
            pagenode.AppendChild(itemsnode);

            for (int j = 0; j < page.Items.Count; j++)
                BuildIItem(page, doc, itemsnode, page.Items[j], "item");

            XmlNode actionsnode = doc.CreateElement("actions");
            pagenode.AppendChild(actionsnode);

            for (int j = 0; j < page.Actions.Count; j++)
                BuildIItem(page, doc, actionsnode, page.Actions[j], "action");

        }

        private static void BuildIItem(IPage page, XmlDocument doc, XmlNode parentnode, IItem itemdata, string name)
        {

            XmlNode itemnode = doc.CreateElement(name);
            parentnode.AppendChild(itemnode);

            XmlAttribute commandattribute = doc.CreateAttribute("command");
            commandattribute.Value = itemdata.Command;
            itemnode.Attributes.Append(commandattribute);

            XmlAttribute iconattribute = doc.CreateAttribute("icon");
            iconattribute.Value = itemdata.Icon;
            itemnode.Attributes.Append(iconattribute);

            XmlText textnode2 = doc.CreateTextNode(itemdata.Text);
            itemnode.AppendChild(textnode2);
        }

        public static string Serialize(IPage page)
        {
            XmlDocument doc = new XmlDocument();
            XmlDeclaration decl = doc.CreateXmlDeclaration("1.0", "UTF-8", "yes");
            doc.AppendChild(decl);
            BuildPage(page, doc, doc);
            return doc.OuterXml;
        }
    }
}
