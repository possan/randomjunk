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
		public string InstrumentID;
		public int Duration;
		public List<PatternNote> Notes;
		public List<PatternAutomation> Automations;

		public Pattern()
		{
			ID = "";
			Name = "";
			InstrumentID = "";
			Duration = 16;
			Notes = new List<PatternNote>();
			Automations = new List<PatternAutomation>();
		}

		public bool LoadFromXML(XmlNode node)
		{
			if (node.Attributes["id"] != null)
				ID = node.Attributes["id"].Value;

			if (node.Attributes["name"] != null)
				Name = node.Attributes["name"].Value;

			if (node.Attributes["instrument"] != null)
				InstrumentID = node.Attributes["instrument"].Value;

			if (node.Attributes["duration"] != null)
			{
				int i = 0;
				int.TryParse(node.Attributes["duration"].Value, out i);
				Duration = i;
			}

			XmlNodeList nl = node.SelectNodes("notes/note");
			for (int j = 0; j < nl.Count; j++)
			{
				PatternNote pn = new PatternNote();
				if (pn.LoadFromXML(nl[j]))
					Notes.Add(pn);
			}

			nl = node.SelectNodes("automations/automation");
			for (int j = 0; j < nl.Count; j++)
			{
				PatternAutomation pa = new PatternAutomation();
				if (pa.LoadFromXML(nl[j]))
					Automations.Add(pa);
			}

			return true;
		}

		public bool SaveToXML(XmlNode parent)
		{
			XmlNode rootel = Utilities.AddXmlElement(parent, "pattern");
			Utilities.AddXmlAttribute(rootel, "id", ID);
			Utilities.AddXmlAttribute(rootel, "name", Name);
			Utilities.AddXmlAttribute(rootel, "instrument", InstrumentID);
			Utilities.AddXmlAttribute(rootel, "duration", Duration.ToString());

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

		public Pattern Clone()
		{
			Pattern ret = new Pattern();
			ret.ID = ID;
			ret.InstrumentID = InstrumentID;
			ret.Name = Name;
			ret.Duration = Duration;
			for (int k = 0; k < Notes.Count; k++)
				ret.Notes.Add(Notes[k].Clone());
			for (int k = 0; k < Automations.Count; k++)
				ret.Automations.Add(Automations[k].Clone());
			return ret;
		}
	}
}
