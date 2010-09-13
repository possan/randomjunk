using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class Pattern
	{
		public string ID;
		public string Name;
		public List<PatternNote> Notes;
		public List<PatternAutomation> Automations;

		public Pattern()
		{
			ID = "";
			Name = "";
			Notes = new List<PatternNote>();
			Automations = new List<PatternAutomation>();
		}

		public bool LoadFromXML(XmlNode node)
		{
			return false;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "pattern");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "name", Name);

			XmlNode notesel = Utilities.AddXmlElement(rootel, "notes");
			for (int j = 0; j < Notes.Count; j++)
				Notes[j].SaveToXML(notesel);

			XmlNode automationsel = Utilities.AddXmlElement(rootel, "automations");
			for (int j = 0; j < Automations.Count; j++)
				Automations[j].SaveToXML(automationsel);

			return false;
		}

		public PatternNote GetNoteByID(string id)
		{
			int idx = -1;
			for (int j = 0; j < Notes.Count; j++)
				if (Notes[j].ID == id)
					idx = j;

			if (idx != -1)
				return Notes[idx];

			return null;
		}

		public void RemoveNoteByID(string id)
		{
			int idx = -1;
			for (int j = 0; j < Notes.Count; j++)
				if (Notes[j].ID == id)
					idx = j;

			if (idx != -1)
				Notes.RemoveAt(idx);
		}
	}
}
