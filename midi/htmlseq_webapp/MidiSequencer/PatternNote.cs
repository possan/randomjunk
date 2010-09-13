using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class PatternNote
	{
		public string ID;
		public long From;
		public long To;
		public int Note;
		public int Velocity;

		public PatternNote()
		{
			ID = "";
			From = 0;
			To = 0;
			Note = 0;
			Velocity = 0;
		}

		public PatternNote(string id, long from, long to, int note, int vel)
		{
			ID = id;
			From = from;
			To = to;
			Note = note;
			Velocity = vel;
		}

		public bool LoadFromXML(XmlNode node)
		{
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "note");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "from", From.ToString());
			Utilities.AddXmlAttribute(rootel, "to", To.ToString());
			Utilities.AddXmlAttribute(rootel, "note", Note.ToString());
			Utilities.AddXmlAttribute(rootel, "vel", Velocity.ToString());

			return false;
		}
	}
}
