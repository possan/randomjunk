using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class SongTrackItem
	{
		public string ID;
		public long FromTime;
		public long ToTime;
		public string PatternID;
		public int Transpose;
		public int Speed;

		public SongTrackItem()
		{
			ID = "";
			FromTime = 0;
			ToTime = 0;
			PatternID = "";
			Transpose = 0;
			Speed = 100;
		}

		public SongTrackItem(string id, long from, long to, string pat)
		{
			ID = id;
			FromTime = from;
			ToTime = to;
			PatternID = pat;
			Transpose = 0;
			Speed = 100;
		}

		public bool LoadFromXML(XmlNode node)
		{
			if (node.Attributes["id"] != null)
			{
				ID = node.Attributes["id"].Value;
			}

			if (node.Attributes["from"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["from"].Value, out i);
				FromTime = i;
			}

			if (node.Attributes["to"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["to"].Value, out i);
				ToTime = i;
			}

			if (node.Attributes["pattern"] != null)
			{
				PatternID = node.Attributes["pattern"].Value;
			}

			if (node.Attributes["transpose"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["transpose"].Value, out i);
				Transpose = i;
			}

			if (node.Attributes["speed"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["speed"].Value, out i);
				Speed = i;
			}

			return true;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "item");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "from", FromTime.ToString());
			Utilities.AddXmlAttribute(rootel, "to", ToTime.ToString());
			Utilities.AddXmlAttribute(rootel, "pattern", PatternID);
			Utilities.AddXmlAttribute(rootel, "transpose", Transpose.ToString());
			Utilities.AddXmlAttribute(rootel, "speed", Speed.ToString());

			return false;
		}
	}
}
