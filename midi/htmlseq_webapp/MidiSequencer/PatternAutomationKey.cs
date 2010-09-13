using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class PatternAutomationKey
	{
		public string ID;
		public long Time;
		public int Value;

		public PatternAutomationKey()
		{
			ID = "";
			Time = 0;
			Value = 0;
		}

		public PatternAutomationKey(string id, long t, int v)
		{
			ID = id;
			Time = t;
			Value = v;
		}

		public bool LoadFromXML(XmlNode node)
		{
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "note");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "time", Time.ToString());
			Utilities.AddXmlAttribute(rootel, "value", Value.ToString());


			return false;
		}
	}
}
