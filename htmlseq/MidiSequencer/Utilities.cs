using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class Utilities
	{
		public static XmlNode AddXmlElement(XmlNode parent, string name)
		{
			return AddXmlElement(parent, name, null, null);
		}

		public static XmlNode AddXmlElement(XmlNode parent, string name, string attrname1, string attrvalue1)
		{
			XmlNode node = parent.OwnerDocument.CreateElement(name);
			parent.AppendChild(node);

			if (attrname1 != null && attrvalue1 != null)
			{
				XmlAttribute attr = parent.OwnerDocument.CreateAttribute(attrname1);
				attr.Value = attrvalue1;
				node.Attributes.Append(attr);
			}

			return node;
		}

		public static void AddXmlAttribute(XmlNode parent, string name, string value)
		{
			XmlAttribute attr = parent.OwnerDocument.CreateAttribute(name);
			attr.Value = value;
			parent.Attributes.Append(attr);
		}

		public static void AddXmlText(XmlNode parent, string name, string value)
		{
			XmlNode fieldnode = null;

			if (name != null)
			{
				fieldnode = parent.OwnerDocument.CreateElement(name);
				parent.AppendChild(fieldnode);
			}
			else
			{
				fieldnode = parent;
			}

			if (value.Contains("\n"))
			{
				XmlCDataSection propcdata = parent.OwnerDocument.CreateCDataSection(value);
				fieldnode.AppendChild(propcdata);
			}
			else
			{
				XmlText proptextnode = parent.OwnerDocument.CreateTextNode(value);
				fieldnode.AppendChild(proptextnode);
			}

		}

		public static string GetAllCData(XmlNode root)
		{
			return root.InnerText.Trim();
		}


	}
}
