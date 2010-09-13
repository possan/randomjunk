using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using Norkay.Utilities;
using MidiSequencer;
using HtmlSeq.Common;

namespace htmlseq_webapp
{
	public partial class c : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Request["getinstrumentlist"] != null)
				GetInstrumentList();

			else if (Request["getinstrument"] != null)
				GetInstrument();

			else if (Request["createinstrument"] != null)
				CreateInstrument();

			else if (Request["deleteinstrument"] != null)
				DeleteInstrument();

			else if (Request["updateinstrument"] != null)
				UpdateInstrument();

			else if (Request["getpatternlist"] != null)
				GetPatternList();

			else if (Request["getpattern"] != null)
				GetPattern();

			else if (Request["renamepattern"] != null)
				RenamePattern();

			else if (Request["changepatternduration"] != null)
				ChangePatternDuration();

			else if (Request["clonepattern"] != null)
				ClonePattern();

			else if (Request["createpattern"] != null)
				CreatePattern();

			else if (Request["getautomationchannels"] != null)
				GetAutomationChannels();

			else if (Request["poll"] != null)
				Poll();

			else if (Request["save"] != null)
				Save();

			else if (Request["notify"] != null)
				Notify();

			Response.End();
		}

		private void ChangePatternDuration()
		{
			string oldpat = AjaxUtilities.GetStringParameter("changepatternduration");
			string sid = AjaxUtilities.GetStringParameter("session");
			int dur = AjaxUtilities.GetIntParameter("duration");
			Song s = Global.CurrentSong;

			Pattern p = s.GetPatternByID(oldpat);
			p.Duration = dur;
			// s.Patterns.Add(p);

			Notifications.QueueToAll(sid, "pattern-changed|" + oldpat);

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
		}

		private void Save()
		{
			Global.CurrentSong.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
		}

		private static void GetInstrumentList()
		{
			Song s = Global.CurrentSong;
			JSONWriter jw = new JSONWriter();
			jw.Class();
			jw.Array("instruments");
			for (int k = 0; k < s.Instruments.Count; k++)
			{
				Instrument ins = s.Instruments[k];

				jw.Class();
				jw.Field("id", ins.ID);
				jw.Field("name", ins.Name);
				jw.Field("type", ins.Type);
				jw.End();
			}
			jw.End();
			jw.End();
			AjaxUtilities.ReturnJSON(jw);
		}

		private static void GetInstrument()
		{
			string insid = AjaxUtilities.GetStringParameter("getinstrument");
			Song s = Global.CurrentSong;
			JSONWriter jw = new JSONWriter();
			jw.Class();
			for (int k = 0; k < s.Instruments.Count; k++)
			{
				Instrument ins = s.Instruments[k];
				if (ins.ID == insid)
				{
					jw.Field("id", ins.ID);
					jw.Field("name", ins.Name);
					jw.Field("type", ins.Type);
					jw.Field("mididevice", ins.MidiDevice);
					jw.Field("midichannel", ins.MidiChannel);
					jw.Field("midipatch", ins.MidiPatch);
				}
			}
			jw.End();
			AjaxUtilities.ReturnJSON(jw);
		}

		private void CreateInstrument()
		{
			string insid = AjaxUtilities.GetStringParameter("createinstrument");
			string sid = AjaxUtilities.GetStringParameter("session");
			string name = AjaxUtilities.GetStringParameter("name");

			Song s = Global.CurrentSong;
			Instrument ins = new Instrument();
			ins.ID = insid;
			ins.Name = name;
			s.Instruments.Add(ins);

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));

			Notifications.QueueToAll(sid, "instrument-created|" + insid);

			AjaxUtilities.ReturnString("OK");
		}

		private void DeleteInstrument()
		{
			string insid = AjaxUtilities.GetStringParameter("deleteinstrument");
			int idx = -1;
			Song s = Global.CurrentSong;
			for (int k = 0; k < s.Instruments.Count; k++)
			{
				Instrument ins = s.Instruments[k];
				if (ins.ID == insid)
				{
					idx = k;
				}
			}

			if (idx != -1)
				s.Instruments.RemoveAt(idx);

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));

			string sid = AjaxUtilities.GetStringParameter("session");
			Notifications.QueueToAll(sid, "instrument-deleted|" + insid);

			AjaxUtilities.ReturnString("OK");
		}

		private void UpdateInstrument()
		{
			string insid = AjaxUtilities.GetStringParameter("updateinstrument");

			string name = AjaxUtilities.GetStringParameter("name");
			string type = AjaxUtilities.GetStringParameter("type");

			int midichannel = AjaxUtilities.GetIntParameter("midichannel");
			int mididevice = AjaxUtilities.GetIntParameter("mididevice");
			int midipatch = AjaxUtilities.GetIntParameter("midipatch");

			Song s = Global.CurrentSong;
			for (int k = 0; k < s.Instruments.Count; k++)
			{
				Instrument ins = s.Instruments[k];
				if (ins.ID == insid)
				{
					ins.Name = name;
					ins.Type = type;
					ins.MidiChannel = midichannel;
					ins.MidiDevice = mididevice;
					ins.MidiPatch = midipatch;
				}
			}

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));

			string sid = AjaxUtilities.GetStringParameter("session");
			Notifications.QueueToAll(sid, "instrument-updated|" + insid);

			AjaxUtilities.ReturnString("OK");
		}

		private static void GetPatternList()
		{
			string ins = AjaxUtilities.GetStringParameter("getpatternlist");
			Song s = Global.CurrentSong;
			JSONWriter jw = new JSONWriter();
			jw.Class();
			jw.Array("patterns");
			for (int k = 0; k < s.Patterns.Count; k++)
			{
				Pattern p = s.Patterns[k];
				if (p.InstrumentID == ins)
				{
					jw.Class();
					jw.Field("id", p.ID);
					jw.Field("name", p.Name);
					jw.End();
				}
			}
			jw.End();
			jw.End();
			AjaxUtilities.ReturnJSON(jw);
		}

		private static void GetPattern()
		{
			string pat = AjaxUtilities.GetStringParameter("getpattern");
			Song s = Global.CurrentSong;
			Pattern p = s.GetPatternByID(pat);

			JSONWriter jw = new JSONWriter();
			jw.Class();
			jw.Field("id", p.ID);
			jw.Field("duration", p.Duration);
			jw.Field("name", p.Name);
			jw.Array("notes");
			for (int k = 0; k < p.Notes.Count; k++)
			{
				PatternNote n = p.Notes[k];
				jw.Class();
				jw.Field("id", n.ID);
				jw.Field("from", n.From);
				jw.Field("to", n.To);
				jw.Field("note", n.Note);
				jw.Field("velocity", n.Velocity);
				jw.End();
			}
			jw.End();
			jw.Array("automations");
			for (int k = 0; k < p.Automations.Count; k++)
			{
				PatternAutomation am = p.Automations[k];
				jw.Class();
				jw.Field("id", am.ID);
				jw.Field("channel", am.Channel);
				jw.Field("macro", am.Macro);
				jw.Array("points");
				for (int j = 0; j < am.Keys.Count; j++)
				{
					PatternAutomationKey amk = am.Keys[j];
					jw.Class();
					jw.Field("id", amk.ID);
					jw.Field("time", amk.Time);
					jw.Field("value", amk.Value);
					jw.End();
				}
				jw.End();
				jw.End();
			}
			jw.End();
			jw.End();
			AjaxUtilities.ReturnJSON(jw);
		}

		private void Notify()
		{
			string sid = AjaxUtilities.GetStringParameter("session");
			string n = AjaxUtilities.GetStringParameter("notify");
			if (n == "addnote")
			{
				string pat = AjaxUtilities.GetStringParameter("pattern");
				string id = AjaxUtilities.GetStringParameter("id");
				int from = AjaxUtilities.GetIntParameter("from");
				int to = AjaxUtilities.GetIntParameter("to");
				int note = AjaxUtilities.GetIntParameter("note");
				int vel = AjaxUtilities.GetIntParameter("velocity");

				Notifications.QueueToAll(sid, "note-added|" + id + "|" + pat);

				// string pat = "pat0";
				Song s = Global.CurrentSong;
				Pattern p = s.GetPatternByID(pat);
				p.Notes.Add(new PatternNote(id, from, to, note, vel));
				Global.CurrentSong.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
			}
			else if (n == "movenote")
			{
				string pat = AjaxUtilities.GetStringParameter("pattern");// "dummy000";
				string id = AjaxUtilities.GetStringParameter("id");
				int from = AjaxUtilities.GetIntParameter("from");
				int to = AjaxUtilities.GetIntParameter("to");
				int note = AjaxUtilities.GetIntParameter("note");
				int vel = AjaxUtilities.GetIntParameter("velocity");

				Notifications.QueueToAll(sid, "note-updated|" + id + "|" + pat);

				Song s = Global.CurrentSong;
				Pattern p = s.GetPatternByID(pat);
				PatternNote nt = p.GetNoteByID(id);
				if (nt != null)
				{
					nt.From = from;
					nt.To = to;
					nt.Note = note;
					nt.Velocity = vel;
				}
			}
			else if (n == "deletenote")
			{
				string pat = AjaxUtilities.GetStringParameter("pattern");// "dummy000";
				string id = AjaxUtilities.GetStringParameter("id");

				Notifications.QueueToAll(sid, "note-deleted|" + id + "|" + pat);

				Song s = Global.CurrentSong;
				Pattern p = s.GetPatternByID(pat);
				p.RemoveNoteByID(id);
			}
			else if (n == "")
			{
			}
			else if (n == "")
			{
			}
			else if (n == "")
			{
			}
		}

		private void Poll()
		{
			string sid = Request["poll"];
			SessionManager.KeepAlive(sid);
			string msg = Notifications.Poll(sid);
			AjaxUtilities.ReturnString(msg);
		}

		private static void GetAutomationChannels()
		{
			JSONWriter jw = new JSONWriter();
			jw.Class();
			jw.Array("channels");
			for (int k = 0; k < 127; k++)
			{
				jw.Class();
				jw.Field("id", k);
				jw.Field("name", "Automation channel " + k);
				jw.End();
			}
			jw.End();
			jw.End();
			AjaxUtilities.ReturnJSON(jw);
		}

		private void CreatePattern()
		{
			string newid = Request["createpattern"];
			string sid = Request["session"];
			string nam = AjaxUtilities.GetStringParameter("name");

			Song s = Global.CurrentSong;

			Pattern p = new Pattern();
			p.ID = newid;
			p.Name = nam;
			s.Patterns.Add(p);

			Notifications.QueueToAll(sid, "pattern-changed|" + newid);

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
		}

		private void ClonePattern()
		{
			string newid = Request["clonepattern"];
			string sid = Request["session"];
			string pat = AjaxUtilities.GetStringParameter("pattern");
			string nam = AjaxUtilities.GetStringParameter("name");

			Song s = Global.CurrentSong;

			Pattern p = s.GetPatternByID(pat);
			p = p.Clone();
			p.ID = newid;
			p.Name = nam;
			s.Patterns.Add(p);

			Notifications.QueueToAll(sid, "pattern-changed|" + newid);


			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
		}

		private void RenamePattern()
		{
			string oldpat = AjaxUtilities.GetStringParameter("renamepattern");
			string sid = AjaxUtilities.GetStringParameter("session");
			string nam = AjaxUtilities.GetStringParameter("name");
			Song s = Global.CurrentSong;

			Pattern p = s.GetPatternByID(oldpat);
			p.Name = nam;
			// s.Patterns.Add(p);

			Notifications.QueueToAll(sid, "pattern-changed|" + oldpat);

			s.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
		}
	}
}
