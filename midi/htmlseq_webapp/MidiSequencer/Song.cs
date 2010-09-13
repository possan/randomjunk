using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace MidiSequencer
{
	public class Song
	{
		public string Name;
		public float BPM;
		public long Duration;

		public int Beats1;
		public int Beats2;

		public bool Looping;
		public int LoopCounter;
		public long LoopIn;
		public long LoopOut;

		public List<Pattern> Patterns;
		public List<SongTrack> Tracks;
		public List<Instrument> Instruments;

		public float PlayPosition;
		public long Ticks;
		public long SubTicks;

		public Song()
		{
			Name = "Unnamed";
			BPM = 120.0f;
			Duration = 32;

			Beats1 = 4;
			Beats2 = 4;

			LoopIn = 1;
			LoopOut = 7;
			Looping = false;
			LoopCounter = 0;

			Patterns = new List<Pattern>();
			Tracks = new List<SongTrack>();
			Instruments = new List<Instrument>();

			PlayPosition = 0.0f;
			Ticks = 0;
			SubTicks = 0;
		}

		public static Song CreateFromFile(string filename)
		{
			Song ret = null;

			Song t = new Song();
			if (t.LoadFromFile(filename))
				ret = t;

			return ret;
		}

		public bool SaveToFile(string filename)
		{
			XmlDocument d = new XmlDocument();
			d.AppendChild(d.CreateXmlDeclaration("1.0", "UTF-8", "yes"));

			XmlElement rootel = d.CreateElement("song");
			d.AppendChild(rootel);

			XmlElement commonel = d.CreateElement("common");
			rootel.AppendChild(commonel);

			Utilities.AddXmlText(commonel, "name", Name);
			Utilities.AddXmlText(commonel, "bpm", BPM.ToString("0.0"));
			Utilities.AddXmlText(commonel, "duration", Duration.ToString());

			Utilities.AddXmlText(commonel, "beats1", Beats1.ToString());
			Utilities.AddXmlText(commonel, "beats2", Beats2.ToString());

			Utilities.AddXmlText(commonel, "loopstart", LoopIn.ToString());
			Utilities.AddXmlText(commonel, "loopend", LoopOut.ToString());
			Utilities.AddXmlText(commonel, "looping", (Looping ? 1 : 0).ToString());

			Utilities.AddXmlText(commonel, "position", PlayPosition.ToString());

			XmlElement patternsel = d.CreateElement("patterns");
			rootel.AppendChild(patternsel);
			for (int j = 0; j < Patterns.Count; j++)
				Patterns[j].SaveToXML(patternsel);

			XmlElement tracksel = d.CreateElement("tracks");
			rootel.AppendChild(tracksel);
			for (int j = 0; j < Tracks.Count; j++)
				Tracks[j].SaveToXML(tracksel);

			XmlElement instrumentsel = d.CreateElement("instruments");
			rootel.AppendChild(instrumentsel);
			for (int j = 0; j < Instruments.Count; j++)
				Instruments[j].SaveToXML(instrumentsel);

			d.Save(filename);
			return true;
		}

		public bool LoadFromFile(string filename)
		{
			return true;
		}

	}
}
