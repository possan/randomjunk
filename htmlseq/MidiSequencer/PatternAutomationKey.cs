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
			if (node.Attributes["id"] != null)
			{
				ID = node.Attributes["id"].Value;
			}

			if (node.Attributes["time"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["time"].Value, out i);
				Time = i;
			}

			if (node.Attributes["value"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["value"].Value, out i);
				Value = i;
			}

			return true;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "key");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "time", Time.ToString());
			Utilities.AddXmlAttribute(rootel, "value", Value.ToString());

			return false;
		}

		public PatternAutomationKey Clone()
		{
			PatternAutomationKey ret = new PatternAutomationKey();
			ret.ID = ID;
			ret.Time = Time;
			ret.Value = Value;
			return ret;
		}
	}
}
