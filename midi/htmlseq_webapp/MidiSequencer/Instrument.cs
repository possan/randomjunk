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
		public int MidiChannel;
		public int MidiPatch;

		public Instrument()
		{
			ID = "";
			Name = "";
			Type = "";
			MidiChannel = 0;
			MidiPatch = 0;
		}

		public bool LoadFromXML(XmlNode node)
		{
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "instrument");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "name", Name);
			Utilities.AddXmlAttribute(rootel, "type", Type);
			Utilities.AddXmlAttribute(rootel, "midichannel", MidiChannel.ToString());
			Utilities.AddXmlAttribute(rootel, "midipatch", MidiPatch.ToString());



			return false;
		}
	}
}
