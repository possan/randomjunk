using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;
using System.IO;

namespace MidiSequencer
{
	public class Song
	{
		public string Name;
		public int BPM;
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
			Patterns = new List<Pattern>();
			Tracks = new List<SongTrack>();
			Instruments = new List<Instrument>();

			Reset();
		}

		public void Reset()
		{
			Name = "Unnamed";
			BPM = 120;
			Duration = 32;

			Beats1 = 4;
			Beats2 = 4;

			LoopIn = 1;
			LoopOut = 7;
			Looping = false;
			LoopCounter = 0;

			Instruments.Clear();
			Patterns.Clear();
			Tracks.Clear();

			PlayPosition = 0.0f;
			Ticks = 0;
			SubTicks = 0;
		}

		public static Song CreateDummySong()
		{
			Song s = new Song();
			s.BPM = 150;
			{
				SongTrack st = new SongTrack();
				st.ID = "trk1";
				st.Name = "Lead";
				st.InstrumentID = "ins1";
				st.LivePatternID = "";
				st.Items.Add(new SongTrackItem("item1", 0, 8, "pat1"));
				st.Items.Add(new SongTrackItem("item2", 10, 18, "pat2"));
				st.Items.Add(new SongTrackItem("item3", 20, 28, "pat3"));
				st.CuedPatternID = "pat00001";
				s.Tracks.Add(st);
			}
			{
				SongTrack st = new SongTrack();
				st.ID = "trk2";
				st.Name = "Synth";
				st.InstrumentID = "ins2";
				s.Tracks.Add(st);
			}

			{
				SongTrack st = new SongTrack();
				st.ID = "trk3";
				st.Name = "Bass";
				st.CuedPatternID = "pat00003";
				st.InstrumentID = "ins3";
				s.Tracks.Add(st);
			}

			{
				Instrument ins = new Instrument();
				ins.ID = "ins1";
				ins.Name = "First instrument";
				ins.MidiChannel = 1;
				ins.MidiPatch = 30;
				ins.Type = "";
				s.Instruments.Add(ins);
			}
			{
				Instrument ins = new Instrument();
				ins.ID = "ins2";
				ins.Name = "Second instrument";
				ins.MidiChannel = 1;
				ins.MidiPatch = 30;
				ins.Type = "";
				s.Instruments.Add(ins);
			}
			{
				Instrument ins = new Instrument();
				ins.ID = "ins3";
				ins.Name = "Third instrument";
				ins.MidiChannel = 1;
				ins.MidiPatch = 30;
				ins.Type = "";
				s.Instruments.Add(ins);
			}






			{
				Pattern pt = new Pattern();
				pt.ID = "pat00001";
				pt.InstrumentID = "ins1";
				pt.Name = "Lead1";
				pt.Duration = 16;
				pt.Notes.Add(new PatternNote("note11_1", 0L, 400L, 30, 100));
				pt.Notes.Add(new PatternNote("note11_2", 200L, 400L, 24, 100));
				pt.Notes.Add(new PatternNote("note11_3", 400L, 1600L, 20, 100));
				{
					PatternAutomation pa = new PatternAutomation();
					pa.Channel = 85;
					pa.ID = "aut85";
					pa.Keys.Add(new PatternAutomationKey("pa0", 0, 100));
					pa.Keys.Add(new PatternAutomationKey("pa1", 100, 10));
					pa.Keys.Add(new PatternAutomationKey("pa2", 1300, 0));
					pt.Automations.Add(pa);
				}
				s.Patterns.Add(pt);
			}
			{
				Pattern pt = new Pattern();
				pt.ID = "pat00002";
				pt.InstrumentID = "ins1";
				pt.Name = "Lead2";
				pt.Duration = 2;
				pt.Notes.Add(new PatternNote("note22_1", 0L, 100L, 30, 100));
				pt.Notes.Add(new PatternNote("note22_2", 100L, 200L, 24, 100));
				s.Patterns.Add(pt);
			}
			{
				Pattern pt = new Pattern();
				pt.ID = "pat00003";
				pt.InstrumentID = "ins2";
				pt.Name = "Lead3";
				s.Patterns.Add(pt);
			}
			{
				Pattern pt = new Pattern();
				pt.ID = "pat00004";
				pt.InstrumentID = "ins3";
				pt.Name = "Lead4";
				s.Patterns.Add(pt);
			}
			return s;
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
			Utilities.AddXmlText(commonel, "bpm", BPM.ToString("0"));
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
			if (!File.Exists(filename))
				return false;

			XmlDocument d = new XmlDocument();
			try
			{
				d.Load(filename);

				XmlNode commonnode = d.SelectSingleNode("/song/common");
				{
					XmlNode n = d.SelectSingleNode("/song/common/name");
					if (n != null)
						Name = n.InnerText;
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/bpm");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						BPM = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/duration");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						Duration = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/beats1");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						Beats1 = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/beats2");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						Beats2 = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/loopstart");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						LoopIn = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/loopend");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						LoopOut = i;
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/looping");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						Looping = (i == 1);
					}
				}
				{
					XmlNode n = d.SelectSingleNode("/song/common/position");
					if (n != null)
					{
						int i = 0;
						int.TryParse(n.InnerText, out i);
						PlayPosition = i;
					}
				}


				XmlNodeList patternlist = d.SelectNodes("/song/patterns/pattern");
				for (int j = 0; j < patternlist.Count; j++)
				{
					Pattern p = new Pattern();
					if (p.LoadFromXML(patternlist[j]))
						Patterns.Add(p);
				}

				XmlNodeList instrumentslist = d.SelectNodes("/song/instruments/instrument");
				for (int j = 0; j < instrumentslist.Count; j++)
				{
					Instrument i = new Instrument();
					if (i.LoadFromXML(instrumentslist[j]))
						Instruments.Add(i);
				}

				XmlNodeList trackslist = d.SelectNodes("/song/tracks/track");
				for (int j = 0; j < trackslist.Count; j++)
				{
					SongTrack t = new SongTrack();
					if (t.LoadFromXML(trackslist[j]))
						Tracks.Add(t);
				}
			}
			catch (Exception z)
			{
				Console.WriteLine(z.ToString());

			}

			return true;
		}


		public Pattern GetPatternByID(string pat)
		{
			for (int k = 0; k < Patterns.Count; k++)
				if (Patterns[k].ID == pat)
					return Patterns[k];

			return null;
		}

		public SongTrack GetTrackByID(string trk)
		{
			for (int k = 0; k < Tracks.Count; k++)
				if (Tracks[k].ID == trk)
					return Tracks[k];

			return null;
		}

		public Instrument GetInstrumentByID(string ins)
		{
			for (int k = 0; k < Instruments.Count; k++)
				if (Instruments[k].ID == ins)
					return Instruments[k];

			return null;
		}

	}
}
