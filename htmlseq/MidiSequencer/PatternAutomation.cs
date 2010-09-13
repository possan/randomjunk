using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class PatternAutomation
	{
		public string ID;
		public int Channel;
		public string Macro;
		public List<PatternAutomationKey> Keys;

		public PatternAutomation()
		{
			ID = "";
			Channel = 0;
			Macro = "";
			Keys = new List<PatternAutomationKey>();
		}

		public bool LoadFromXML(XmlNode node)
		{
			if (node.Attributes["id"] != null)
			{
				ID = node.Attributes["id"].Value;
			}

			if (node.Attributes["channel"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["channel"].Value, out i);
				Channel = i;
			}

			if (node.Attributes["macro"] != null)
			{
				Macro = node.Attributes["macro"].Value;
			}


			XmlNodeList nl = node.SelectNodes("keys/key");
			for (int j = 0; j < nl.Count; j++)
			{
				PatternAutomationKey pn = new PatternAutomationKey();
				if (pn.LoadFromXML(nl[j]))
					Keys.Add(pn);
			}

			return true;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "automation");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "channel", Channel.ToString());
			Utilities.AddXmlAttribute(rootel, "macro", Macro);

			XmlNode keysel = Utilities.AddXmlElement(rootel, "keys");
			for (int k = 0; k < Keys.Count; k++)
				Keys[k].SaveToXML(keysel);

			return false;
		}

		public PatternAutomation Clone()
		{
			PatternAutomation ret = new PatternAutomation();
			ret.Channel = Channel;
			ret.ID = ID;
			for (int k = 0; k < Keys.Count; k++)
				ret.Keys.Add(Keys[k].Clone());
			return ret;
		}

	}
}
