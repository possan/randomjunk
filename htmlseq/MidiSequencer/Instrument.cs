using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class Instrument
	{
		public string ID;
		public string Name;
		public string Type;
		public int MidiDevice;
		public int MidiChannel;
		public int MidiPatch;

		public Instrument()
		{
			ID = "";
			Name = "";
			Type = "";
			MidiDevice = 0;
			MidiChannel = 0;
			MidiPatch = 0;
		}

		public bool LoadFromXML(XmlNode node)
		{
			if (node.Attributes["id"] != null)
			{
				ID = node.Attributes["id"].Value;
			}

			if (node.Attributes["name"] != null)
			{
				Name = node.Attributes["name"].Value;
			}

			if (node.Attributes["type"] != null)
			{
				Type = node.Attributes["type"].Value;
			}

			if (node.Attributes["midichannel"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["midichannel"].Value, out i);
				MidiChannel = i;
			}

			if (node.Attributes["midipatch"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["midipatch"].Value, out i);
				MidiPatch = i;
			}
			if (node.Attributes["mididevice"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["mididevice"].Value, out i);
				MidiDevice = i;
			}

			return true;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "instrument");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "name", Name);
			Utilities.AddXmlAttribute(rootel, "type", Type);
			Utilities.AddXmlAttribute(rootel, "midichannel", MidiChannel.ToString());
			Utilities.AddXmlAttribute(rootel, "midipatch", MidiPatch.ToString());
			Utilities.AddXmlAttribute(rootel, "mididevice", MidiDevice.ToString());

			return false;
		}

		public Instrument Clone()
		{
			Instrument ret = new Instrument();
			ret.ID = ID;
			ret.Name = Name;
			ret.Type = Type;
			ret.MidiPatch = MidiPatch;
			ret.MidiChannel = MidiChannel;
			ret.MidiDevice = MidiDevice;
			return ret;
		}
	}
}
