using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;
using MidiSequencer;

namespace htmlseq_webapp
{
	public class Global : System.Web.HttpApplication
	{
		public static Song CurrentSong
		{
			get
			{
				if (HttpContext.Current.Application["cs"] == null)
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
						Pattern pt = new Pattern();
						pt.Name = "Lead1";
						pt.Notes.Add(new PatternNote("note1", 0L, 400L, 30, 100));
						pt.Notes.Add(new PatternNote("note2", 200L, 400L, 24, 100));
						pt.Notes.Add(new PatternNote("note3", 400L, 1600L, 20, 100));
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
					s.SaveToFile(HttpContext.Current.Server.MapPath("~/testsong2.xml"));
					HttpContext.Current.Application["cs"] = s;
				}
				return HttpContext.Current.Application["cs"] as Song;
			}
			set
			{
				HttpContext.Current.Application["cs"] = value;
			}
		}

		protected void Application_Start(object sender, EventArgs e)
		{
		}

		protected void Session_Start(object sender, EventArgs e)
		{

		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{

		}

		protected void Session_End(object sender, EventArgs e)
		{

		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
	}
}