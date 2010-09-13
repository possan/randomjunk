using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class SongTrack
	{
		public string ID;
		public string Name;
		public string InstrumentID;
		public string LivePatternID;
		public string CuedPatternID;
		public int Volume;
		public List<SongTrackItem> Items;

		public SongTrack()
		{
			ID = "";
			Name = "";
			InstrumentID = "";
			LivePatternID = "";
			CuedPatternID = "";
			Volume = 100;
			Items = new List<SongTrackItem>();
		}

		public bool LoadFromXML(XmlNode node)
		{
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "note");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "name", Name);
			Utilities.AddXmlAttribute(rootel, "instrument", InstrumentID);
			Utilities.AddXmlAttribute(rootel, "livepat", LivePatternID);
			Utilities.AddXmlAttribute(rootel, "cuepat", CuedPatternID);
			Utilities.AddXmlAttribute(rootel, "volume", Volume.ToString());

			XmlNode itemsel = Utilities.AddXmlElement(rootel, "items");
			for (int j = 0; j < Items.Count; j++)
				Items[j].SaveToXML(itemsel);

			return false;
		}
	}
}
