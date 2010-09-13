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

namespace htmlseq_webapp
{
	public partial class c : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Request["getinstrumentlist"] != null)
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
					jw.Field("midichannel", ins.MidiChannel);
					jw.Field("midipatch", ins.MidiPatch);
					jw.End();
				}
				jw.End();
				jw.End();
				AjaxUtilities.ReturnJSON(jw);
			}
			else if (Request["getpatternlist"] != null)
			{
				string ins = AjaxUtilities.GetStringParameter("getpatternlist");
				Song s = Global.CurrentSong;
				JSONWriter jw = new JSONWriter();
				jw.Class();
				jw.Array("patterns");
				for (int k = 0; k < s.Patterns.Count; k++)
				{
					Pattern p = s.Patterns[k];
					jw.Class();
					jw.Field("id", p.ID);
					jw.Field("name", p.Name);
					jw.End();
				}
				jw.End();
				jw.End();
				AjaxUtilities.ReturnJSON(jw);
			}
			else if (Request["getpattern"] != null)
			{
				string patid = AjaxUtilities.GetStringParameter("getpattern");
				Pattern p = Global.CurrentSong.Patterns[0];

				JSONWriter jw = new JSONWriter();
				jw.Class();
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
			else if (Request["getautomationchannels"] != null)
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
			else if (Request["save"] != null)
			{
				Global.CurrentSong.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
			}
			else if (Request["notify"] != null)
			{
				string n = AjaxUtilities.GetStringParameter("notify");
				if (n == "addnote")
				{
					string id = "dummy000";
					int from = AjaxUtilities.GetIntParameter("from");
					int to = AjaxUtilities.GetIntParameter("to");
					int note = AjaxUtilities.GetIntParameter("note");
					int vel = AjaxUtilities.GetIntParameter("velocity");

					// string pat = "pat0";
					Song s = Global.CurrentSong;
					Pattern p = s.Patterns[0];
					p.Notes.Add(new PatternNote(id, from, to, note, vel));
					Global.CurrentSong.SaveToFile(Server.MapPath("~/testsong-temp.xml"));
				}
				else if (n == "movenote")
				{
					string id = AjaxUtilities.GetStringParameter("id");
					int from = AjaxUtilities.GetIntParameter("from");
					int to = AjaxUtilities.GetIntParameter("to");
					int note = AjaxUtilities.GetIntParameter("note");
					int vel = AjaxUtilities.GetIntParameter("velocity");

					Song s = Global.CurrentSong;
					Pattern p = s.Patterns[0];
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
					string id = AjaxUtilities.GetStringParameter("id");
					Song s = Global.CurrentSong;
					Pattern p = s.Patterns[0];
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
			else
			{

				Response.End();
			}
		}
	}
}
