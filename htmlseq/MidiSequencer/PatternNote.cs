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
			if (node.Attributes["id"] != null)
			{
				ID = node.Attributes["id"].Value;
			}

			if (node.Attributes["from"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["from"].Value, out i);
				From = i;
			}

			if (node.Attributes["to"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["to"].Value, out i);
				To = i;
			}

			if (node.Attributes["note"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["note"].Value, out i);
				Note = i;
			}

			if (node.Attributes["vel"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["vel"].Value, out i);
				Velocity = i;
			}

			return true;
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

		public PatternNote Clone()
		{
			PatternNote ret = new PatternNote();
			ret.ID = ID;
			ret.Note = Note;
			ret.To = To;
			ret.From = From;
			ret.Velocity = Velocity;
			return ret;
		}

	}
}
