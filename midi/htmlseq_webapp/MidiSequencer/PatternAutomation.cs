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
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "instrument");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "channel",Channel.ToString());
			Utilities.AddXmlAttribute(rootel, "macro", Macro);

			XmlNode keysel = Utilities.AddXmlElement(rootel, "keys");
			for (int k = 0; k < Keys.Count; k++)
				Keys[k].SaveToXML(keysel);

			return false;
		}
	}
}
