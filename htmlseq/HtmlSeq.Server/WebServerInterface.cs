using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Possan.WebServer;
using System.IO;
using System.Net;
using MidiSequencer;
using Norkay.Utilities;
using HtmlSeq.Common;
using System.Threading;

namespace HtmlSeq.Server
{
    public class WebServerInterface : BaseWebServer
    {
        public override void HandleRequest(WebContext context)
        {
            Console.WriteLine("got request (#" + Thread.CurrentThread.ManagedThreadId + ") for: " + context.Request.LocalPath);
            if (context.Request.LocalPath == "/")
                HandleRootRequest(context);
            else if (context.Request.LocalPath == "/c.aspx")
                HandleAjaxRequest(context);
            else if (context.Request.LocalPath.EndsWith(".jsdata"))
                HandleDynamicStaticContentRequest(context);
            else
                HandleStaticContentRequest(context);

            context.Response.Flush();
            context.Response.End();
            // Console.WriteLine("request finished.");
        }

        private void HandleDynamicStaticContentRequest(WebContext context)
        {
            Song s = State.CurrentSong;

            context.Response.SetHeader("Expires", DateTime.Now.AddYears(-1).ToString("R"));
            context.Response.StatusCode = 200;
            context.Response.ContentType = "text/javascript";

            if (context.Request.LocalPath == "/patterns.jsdata")
                ListPatternsJSON(context, s);

            else if (context.Request.LocalPath == "/instruments.jsdata")
                ListInstrumentsJSON(context, s);

            else if (context.Request.LocalPath == "/tracks.jsdata")
                ListTracksJSON(context, s);

            else if (context.Request.LocalPath == "/mididevices.jsdata")
                ListMidiDevicesJSON(context, s);

            else if (context.Request.LocalPath == "/song.jsdata")
                ListSongJSON(context, s);

            else if (context.Request.LocalPath == "/automationchannels.jsdata")
                ListAutomationChannelsJSON(context, s);

            /*
             else if (context.Request.LocalPath == "/instrument.jsdata")
                        {
                            JSONWriter jw = new JSONWriter();
                            jw.Class("g_SetupData");
                            jw.Field("bpm", s.BPM);
                            jw.Field("beats1", s.Beats1);
                            jw.Field("beats2", s.Beats2);
                            jw.End();

                            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
                        }
                        else if (context.Request.LocalPath == "/setup.jsdata")
                        {
                            // byte[] dum = File.ReadAllBytes(lp);
                            // Console.WriteLine("sending " + dum.Length + " bytes");
                            // context.Response.Write(dum);

                            JSONWriter jw = new JSONWriter();
                            jw.Class("g_SetupData");
                            jw.Field("bpm", s.BPM);
                            jw.Field("beats1", s.Beats1);
                            jw.Field("beats2", s.Beats2);
                            jw.End();

                            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
                        }
                        else
                        {
                            context.Response.StatusCode = 404;
                            Console.WriteLine("sending 404");
                        }
              */
        }

        private static void ListSongJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Class();
            jw.Field("bpm", s.BPM);
            jw.Field("beats1", s.Beats1);
            jw.Field("beats2", s.Beats2);
            jw.End();

            context.Response.Write("g_Song = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private static void ListTracksJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Array();

            for (int j = 0; j < s.Tracks.Count; j++)
            {
                SongTrack st = s.Tracks[j];
                jw.Class();
                jw.Field("id", st.ID);
                jw.Field("name", st.Name);

                if (st.CurrentPatternID != null)
                    jw.Field("pattern", st.CurrentPatternID);
                else
                    jw.Field("pattern", "");

                if (st.CuedPatternID != null)
                    jw.Field("cued", st.CuedPatternID);
                else
                    jw.Field("cued", "");

                jw.Field("volume", st.Volume);
                jw.Field("transpose", st.Transpose);
                jw.Field("mute", st.Muted ? 1 : 0);
                jw.Field("solo", st.Solo ? 1 : 0);
                jw.End();
            }

            jw.End();

            context.Response.Write("g_Tracks = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private static void ListAutomationChannelsJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Array();

            for (int j = 0; j < s.Tracks.Count; j++)
            {
                // SongTrack st = s.Tracks[j];
                jw.Class();
                jw.Field("id", j);
                jw.Field("name", "Automation #" + j);
                jw.End();
            }

            jw.End();

            context.Response.Write("g_AutomationTracks = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private static void ListInstrumentsJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Array();

            for (int k = 0; k < s.Instruments.Count; k++)
            {
                Instrument ins = s.Instruments[k];

                jw.Class();
                jw.Field("id", ins.ID);
                jw.Field("name", ins.Name);
                jw.Field("device", ins.MidiDevice);
                jw.Field("channel", ins.MidiChannel);
                jw.Field("patch", ins.MidiPatch);
                jw.Field("type", ins.Type);
                jw.End();
            }

            jw.End();

            context.Response.Write("g_Instruments = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private static void ListPatternsJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Array();

            for (int j = 0; j < s.Patterns.Count; j++)
            {
                Pattern p = s.Patterns[j];

                jw.Class();

                jw.Field("id", p.ID);
                jw.Field("instrument", p.InstrumentID);
                jw.Field("name", p.Name);
                jw.Field("duration", p.Duration);

                jw.Array("notes");
                for (int k = 0; k < p.Notes.Count; k++)
                {
                    PatternNote pn = p.Notes[k];
                    jw.Class();
                    jw.Field("id", pn.ID);
                    jw.Field("from", pn.From);
                    jw.Field("to", pn.To);
                    jw.Field("note", pn.Note);
                    jw.Field("velocity", pn.Velocity);
                    jw.End();
                }
                jw.End();

                jw.Array("automations");
                for (int k = 0; k < p.Automations.Count; k++)
                {
                    PatternAutomation pa = p.Automations[k];
                    jw.Class();
                    jw.Field("id", pa.ID);
                    jw.Field("macro", pa.Macro);
                    jw.Field("channel", pa.Channel);
                    jw.Array("keys");
                    for (int u = 0; u < pa.Keys.Count; u++)
                    {
                        jw.Class();
                        jw.Field("id", pa.Keys[u].ID);
                        jw.Field("time", pa.Keys[u].Time);
                        jw.Field("value", pa.Keys[u].Value);
                        jw.End();
                    }
                    jw.End();
                    jw.End();
                }
                jw.End();

                jw.End();
            }


            jw.End();

            context.Response.Write("g_Patterns = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private static void ListMidiDevicesJSON(WebContext context, Song s)
        {
            JSONWriter jw = new JSONWriter();
            jw.Array();

            List<int> ids = MidiWrapper.GetDeviceIDs();

            for (int k = 0; k < ids.Count; k++)
            {
                string nam = MidiWrapper.GetDeviceName(ids[k]);
                jw.Class();
                jw.Field("id", ids[k]);
                jw.Field("name", nam);
                jw.End();
            }

            jw.End();

            context.Response.Write("g_MidiDevices = ");
            context.Response.Write(jw.ToString(JSONFormatting.Pretty));
            context.Response.Write(";\n");
        }

        private void HandleStaticContentRequest(WebContext context)
        {
            string lp = "static_html" + context.Request.LocalPath;
            // Console.WriteLine("Handling static-content request: " + lp);
            if (File.Exists(lp))
            {
                context.Response.SetHeader("Expires", DateTime.Now.AddDays(-7).ToString("R"));
                context.Response.StatusCode = 200;

                string ext = lp.Substring(lp.LastIndexOf(".") + 1).ToLower();

                Console.WriteLine("ext=\"" + ext + "\"");
                if (ext == "jpeg" || ext == "jpg")
                    context.Response.ContentType = "image/jpeg";
                else if (ext == "png")
                    context.Response.ContentType = "image/png";
                else if (ext == "gif")
                    context.Response.ContentType = "image/gif";
                else if (ext == "js")
                    context.Response.ContentType = "text/javascript";
                else if (ext == "css")
                    context.Response.ContentType = "text/css";
                else if (ext == "htm")
                    context.Response.ContentType = "text/html";
                else if (ext == "txt")
                    context.Response.ContentType = "text/plain";
                else
                    context.Response.ContentType = "application/x-octet-stream";

                byte[] dum = File.ReadAllBytes(lp);
                Console.WriteLine("sending " + dum.Length + " bytes");
                context.Response.Write(dum);
                // }
            }
            else
            {
                context.Response.StatusCode = 404;
                Console.WriteLine("sending 404");
            }
        }

        private void HandleRootRequest(WebContext context)
        {
            Console.WriteLine("Handling root-request.");
            string sid = SessionManager.CreateID();
            context.Response.StatusCode = (int)HttpStatusCode.Redirect;
            context.Response.ContentType = "text/html";
            context.Response.SetHeader("Location", "full/pattern.htm#SESSION=" + sid);
            context.Response.Write("<html><body></body></html>");
        }


        private void HandleAjaxRequest(WebContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.SetHeader("Expires", DateTime.Now.AddYears(-1).ToString("R"));
            // Console.WriteLine("Handling ajaxrequest: " + context.Request.LocalPath + ", querystring: " + context.Request.QueryString + ", postdata: " + context.Request.PostData + "</p>");
            // context.Response.Write("got ajaxrequest: " + context.Request.LocalPath + ", querystring: " + context.Request.QueryString + ", postdata: " + context.Request.PostData + "</p>");

            if (context.Request.HasParameter("getinstrumentlist"))
                GetInstrumentList(context);

            else if (context.Request.HasParameter("cuepattern"))
                CuePattern(context);

            else if (context.Request.HasParameter("getinstrument"))
                GetInstrument(context);

            else if (context.Request.HasParameter("getmididevicelist"))
                GetMidiDeviceList(context);

            else if (context.Request.HasParameter("changepatterninstrument"))
                ChangePatternInstrument(context);

            else if (context.Request.HasParameter("createinstrument"))
                CreateInstrument(context);

            else if (context.Request.HasParameter("deleteinstrument"))
                DeleteInstrument(context);

            else if (context.Request.HasParameter("updateinstrument"))
                UpdateInstrument(context);

            else if (context.Request.HasParameter("getpatternlist"))
                GetPatternList(context);

            else if (context.Request.HasParameter("gettracklist"))
                GetTrackList(context);

            else if (context.Request.HasParameter("getpattern"))
                GetPattern(context);

            else if (context.Request.HasParameter("renamepattern"))
                RenamePattern(context);

            else if (context.Request.HasParameter("changepatternduration"))
                ChangePatternDuration(context);

            else if (context.Request.HasParameter("clonepattern"))
                ClonePattern(context);

            else if (context.Request.HasParameter("createpattern"))
                CreatePattern(context);

            else if (context.Request.HasParameter("createtrack"))
                CreateTrack(context);

            else if (context.Request.HasParameter("getautomationchannels"))
                GetAutomationChannels(context);

            else if (context.Request.HasParameter("poll"))
                Poll(context);

            else if (context.Request.HasParameter("save"))
                Save(context);

            else if (context.Request.HasParameter("settiming"))
                SetTiming(context);

            else if (context.Request.HasParameter("gettiming"))
                GetTiming(context);

            else if (context.Request.HasParameter("notify"))
                Notify(context);

            else if (context.Request.HasParameter("transposetrack"))
                TransposeTrack(context);
        
            else if (context.Request.HasParameter("mutetrack"))
                MuteTrack(context);
            
            else if (context.Request.HasParameter("solotrack"))
                SoloTrack(context);

            else if (context.Request.HasParameter("changetrackvolume"))
                ChangeTrackVolume(context);
        }

        private void ChangePatternInstrument(WebContext context)
        {

            string oldpat = context.Request.GetParameter("changepatterninstrument");
            string sid = context.Request.GetParameter("session");
            string insid = context.Request.GetParameter("instrument");
            Song s = State.CurrentSong;
            Pattern p = s.GetPatternByID(oldpat);
            p.InstrumentID = insid;
            // s.Patterns.Add(p);

            Notifications.QueueToAll(sid, "pattern-changed|" + oldpat);

            s.SaveToFile("testsong-temp.xml");

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");
        }

        private void GetTiming(WebContext context)
        {
            // throw new NotImplementedException();

            string sid = context.Request.GetParameter("gettiming");

            Song s = State.CurrentSong;

            JSONWriter jw = new JSONWriter();
            jw.Class();
            jw.Field("bpm", s.BPM);
            jw.Field("measure1", s.Beats1);
            jw.Field("measure2", s.Beats2);
            jw.End();

            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void SetTiming(WebContext context)
        {
            // throw new NotImplementedException();

            string sid = context.Request.GetParameter("settiming");

            int bpm = context.Request.GetIntParameter("bpm");
            int m1 = context.Request.GetIntParameter("measure1");
            int m2 = context.Request.GetIntParameter("measure2");

            Song s = State.CurrentSong;
            s.BPM = bpm;
            s.Beats1 = m1;
            s.Beats2 = m2;

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "timing-changed|");
        }

        private void CuePattern(WebContext context)
        {
            // throw new NotImplementedException();

            string sid = context.Request.GetParameter("cuepattern");

            string tid = context.Request.GetParameter("track");
            string pid = context.Request.GetParameter("pattern");

            Song s = State.CurrentSong;
            SongTrack st = s.GetTrackByID(tid);
            if (st != null)
            {
                st.CuedPatternID = pid;
                st.LivePatternID = pid;
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "track-changed|" + tid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + tid);

        }

        private void SoloTrack(WebContext context)
        {
            // throw new NotImplementedException();

            string tid = context.Request.GetParameter("solotrack");
            int solo = context.Request.GetIntParameter("solo");
            string sid = context.Request.GetParameter("session");

            Song s = State.CurrentSong;
            SongTrack st = s.GetTrackByID(tid);
            if (st != null)
            {
                st.Solo = (solo == 1);
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "track-changed|" + tid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + tid);
        }

        private void MuteTrack(WebContext context)
        {
            // throw new NotImplementedException();

            string tid = context.Request.GetParameter("mutetrack");
            int muted = context.Request.GetIntParameter("mute");
            string sid = context.Request.GetParameter("session");

            Song s = State.CurrentSong;
            SongTrack st = s.GetTrackByID(tid);
            if (st != null)
            {
                st.Muted = (muted == 1);
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "track-changed|" + tid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + tid);
        }

        private void TransposeTrack(WebContext context)
        {
            // throw new NotImplementedException();

            string tid = context.Request.GetParameter("transposetrack");
            int transpose = context.Request.GetIntParameter("transpose");
            string sid = context.Request.GetParameter("session");

            Song s = State.CurrentSong;
            SongTrack st = s.GetTrackByID(tid);
            if (st != null)
            {
                st.Transpose = transpose;
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "track-changed|" + tid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + tid);
        }

        private void ChangeTrackVolume(WebContext context)
        {
            // throw new NotImplementedException();

            string tid = context.Request.GetParameter("changetrackvolume");
            int newvol = context.Request.GetIntParameter("volume");
            string sid = context.Request.GetParameter("session");

            Song s = State.CurrentSong;
            SongTrack st = s.GetTrackByID(tid);
            if (st != null)
            {
                st.Volume = newvol;
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

            Notifications.QueueToAll(sid, "track-changed|" + tid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + tid);
        }

        private void GetMidiDeviceList(WebContext context)
        {
            string sid = context.Request.GetParameter("getmididevicelist");

            JSONWriter jw = new JSONWriter();
            jw.Class();
            jw.Array("devices");

            List<int> ids = MidiWrapper.GetDeviceIDs();

            for (int k = 0; k < ids.Count; k++)
            {
                string nam = MidiWrapper.GetDeviceName(ids[k]);
                jw.Class();
                jw.Field("id", ids[k]);
                jw.Field("name", nam);
                jw.End();
            }
            jw.End();
            jw.End();
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void GetTrackList(WebContext context)
        {
            string sid = context.Request.GetParameter("gettracklist");
            Song s = State.CurrentSong;
            JSONWriter jw = new JSONWriter();
            jw.Class();
            jw.Array("tracks");
            for (int k = 0; k < s.Tracks.Count; k++)
            {
                SongTrack tr = s.Tracks[k];
                //	if (tr.ID == insid)
                {
                    jw.Class();
                    jw.Field("id", tr.ID);
                    jw.Field("name", tr.Name);

                    if (tr.CurrentPatternID != null)
                        jw.Field("pattern", tr.CurrentPatternID);
                    else
                        jw.Field("pattern", "");

                    if (tr.CuedPatternID != null)
                        jw.Field("cued", tr.CuedPatternID);
                    else
                        jw.Field("cued", "");

                    jw.Field("volume", tr.Volume);
                    jw.Field("transpose", tr.Transpose);
                    jw.Field("mute", tr.Muted ? 1 : 0);
                    jw.Field("solo", tr.Solo ? 1 : 0);
                    jw.End();
                    //					jw.Field("type", ins.Type);
                    //					jw.Field("mididevice", ins.MidiDevice);
                    //					jw.Field("midichannel", ins.MidiChannel);
                    //					jw.Field("midipatch", ins.MidiPatch);
                }
            }
            jw.End();
            jw.End();
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }


        private void ChangePatternDuration(WebContext context)
        {
            string oldpat = context.Request.GetParameter("changepatternduration");
            string sid = context.Request.GetParameter("session");
            int dur = context.Request.GetIntParameter("duration");
            Song s = State.CurrentSong;

            Pattern p = s.GetPatternByID(oldpat);
            p.Duration = dur;
            // s.Patterns.Add(p);

            Notifications.QueueToAll(sid, "pattern-changed|" + oldpat);

            s.SaveToFile("testsong-temp.xml");
        }

        private void Save(WebContext context)
        {
            State.CurrentSong.SaveToFile("testsong-saved.xml");
        }

        private void GetInstrumentList(WebContext context)
        {
            Song s = State.CurrentSong;
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
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void GetInstrument(WebContext context)
        {
            string insid = context.Request.GetParameter("getinstrument");
            Song s = State.CurrentSong;
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
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void CreateInstrument(WebContext context)
        {
            string insid = context.Request.GetParameter("createinstrument");
            string sid = context.Request.GetParameter("session");
            string name = context.Request.GetParameter("name");

            Song s = State.CurrentSong;
            Instrument ins = new Instrument();
            ins.ID = insid;
            ins.Name = name;
            s.Instruments.Add(ins);

            Console.WriteLine("Creating instrument: " + name);

            s.SaveToFile("testsong-temp.xml");

            Notifications.QueueToAll(sid, "instrument-created|" + insid);
            Notifications.QueueToAll(sid, "instrumentlist-changed|" + insid);

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");
        }

        private void DeleteInstrument(WebContext context)
        {
            string insid = context.Request.GetParameter("deleteinstrument");
            int idx = -1;
            Song s = State.CurrentSong;
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

            s.SaveToFile("testsong-temp.xml");

            string sid = context.Request.GetParameter("session");
            Notifications.QueueToAll(sid, "instrument-deleted|" + insid);
            Notifications.QueueToAll(sid, "instrumentlist-changed|" + insid);

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }

        private void DeletePattern(WebContext context)
        {
            string patid = context.Request.GetParameter("deletepattern");
            int idx = -1;
            Song s = State.CurrentSong;
            for (int k = 0; k < s.Patterns.Count; k++)
            {
                Pattern pat = s.Patterns[k];
                if (pat.ID == patid)
                {
                    idx = k;
                }
            }

            if (idx != -1)
                s.Patterns.RemoveAt(idx);

            s.SaveToFile("testsong-temp.xml");

            string sid = context.Request.GetParameter("session");
            Notifications.QueueToAll(sid, "pattern-deleted|" + patid);
            Notifications.QueueToAll(sid, "patternlist-changed|" + patid);

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }

        private void UpdateInstrument(WebContext context)
        {
            string insid = context.Request.GetParameter("updateinstrument");

            string name = context.Request.GetParameter("name");
            string type = context.Request.GetParameter("type");

            int midichannel = context.Request.GetIntParameter("midichannel");
            int mididevice = context.Request.GetIntParameter("mididevice");
            int midipatch = context.Request.GetIntParameter("midipatch");

            Song s = State.CurrentSong;
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

            s.SaveToFile("testsong-temp.xml");

            string sid = context.Request.GetParameter("session");
            Notifications.QueueToAll(sid, "instrument-updated|" + insid);

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }

        private void GetPatternList(WebContext context)
        {
            // string ins = context.Request.GetParameter("getpatternlist");
            Song s = State.CurrentSong;
            JSONWriter jw = new JSONWriter();
            jw.Class();
            jw.Array("patterns");
            for (int k = 0; k < s.Patterns.Count; k++)
            {
                Pattern p = s.Patterns[k];
                // if (p.InstrumentID == ins)
                {
                    jw.Class();
                    jw.Field("id", p.ID);
                    jw.Field("name", p.Name);
                    jw.End();
                }
            }
            jw.End();
            jw.End();
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void GetPattern(WebContext context)
        {
            string pat = context.Request.GetParameter("getpattern");
            Song s = State.CurrentSong;
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
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void Notify(WebContext context)
        {
            string sid = context.Request.GetParameter("session");
            string n = context.Request.GetParameter("notify");
            Console.WriteLine("notify, n=" + n);
            if (n == "addnote")
            {
                string pat = context.Request.GetParameter("pattern");
                string id = context.Request.GetParameter("id");
                int from = context.Request.GetIntParameter("from");
                int to = context.Request.GetIntParameter("to");
                int note = context.Request.GetIntParameter("note");
                int vel = context.Request.GetIntParameter("velocity");

                Notifications.QueueToAll(sid, "note-added|" + id + "|" + pat);

                // string pat = "pat0";
                Song s = State.CurrentSong;
                Pattern p = s.GetPatternByID(pat);
                p.Notes.Add(new PatternNote(id, from, to, note, vel));
                State.CurrentSong.SaveToFile("testsong-autosave.xml");
            }
            else if (n == "movenote")
            {
                string pat = context.Request.GetParameter("pattern");// "dummy000";
                string id = context.Request.GetParameter("id");
                int from = context.Request.GetIntParameter("from");
                int to = context.Request.GetIntParameter("to");
                int note = context.Request.GetIntParameter("note");
                int vel = context.Request.GetIntParameter("velocity");

                Notifications.QueueToAll(sid, "note-updated|" + id + "|" + pat);

                Song s = State.CurrentSong;
                Pattern p = s.GetPatternByID(pat);
                PatternNote nt = p.GetNoteByID(id);
                if (nt != null)
                {
                    nt.From = from;
                    nt.To = to;
                    nt.Note = note;
                    nt.Velocity = vel;
                }
                State.CurrentSong.SaveToFile("testsong-autosave.xml");
            }
            else if (n == "deletenote")
            {
                string pat = context.Request.GetParameter("pattern");// "dummy000";
                string id = context.Request.GetParameter("id");

                Notifications.QueueToAll(sid, "note-deleted|" + id + "|" + pat);

                Song s = State.CurrentSong;
                Pattern p = s.GetPatternByID(pat);
                p.RemoveNoteByID(id);

                State.CurrentSong.SaveToFile("testsong-autosave.xml");
            }
            else if (n == "keyroll")
            {
                //			string pat = context.Request.GetParameter("pattern");// "dummy000";
                string insid = context.Request.GetParameter("instrument");
                int note = context.Request.GetIntParameter("note");

                Song s = State.CurrentSong;
                Instrument ins = s.GetInstrumentByID(insid);
                string state = context.Request.GetParameter("keystate");
                if (state == "down")
                {
                    Console.WriteLine("Keyroll down, note=" + note);
                    MidiWrapper.QueueNoteOn(ins.MidiDevice, ins.MidiChannel, note, 100);
                }
                else if (state == "up")
                {
                    Console.WriteLine("Keyroll up, note=" + note);
                    MidiWrapper.QueueNoteOff(ins.MidiDevice, ins.MidiChannel, note);
                }
            }
            else if (n == "")
            {
            }
            else if (n == "")
            {
            }
            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }

        private void Poll(WebContext context)
        {
            string sid = context.Request.GetParameter("poll");
            SessionManager.KeepAlive(sid);
            string msg = Notifications.Poll(sid);
            // AjaxUtilities.ReturnString(msg);
            context.Response.ContentType = "text/plain";
            context.Response.Write(msg);

        }

        private void GetAutomationChannels(WebContext context)
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
            context.Response.ContentType = "text/javascript";
            context.Response.Write(jw.ToString());
        }

        private void CreateTrack(WebContext context)
        {
            string newid = context.Request.GetParameter("createpattern");
            string sid = context.Request.GetParameter("session");
            string nam = context.Request.GetParameter("name");

            Console.WriteLine("Creating track: " + nam);

            Song s = State.CurrentSong;

            SongTrack p = new SongTrack();
            p.ID = newid;
            p.Name = nam;
            s.Tracks.Add(p);

            Notifications.QueueToAll(sid, "track-created|" + newid);
            Notifications.QueueToAll(sid, "tracklist-changed|" + newid);

            s.SaveToFile("testsong-temp.xml");

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }
        private void CreatePattern(WebContext context)
        {
            string newid = context.Request.GetParameter("createpattern");
            string sid = context.Request.GetParameter("session");
            string nam = context.Request.GetParameter("name");

            Console.WriteLine("Creating pattern: " + nam);

            Song s = State.CurrentSong;

            Pattern p = new Pattern();
            p.ID = newid;
            p.Name = nam;
            s.Patterns.Add(p);

            Notifications.QueueToAll(sid, "pattern-created|" + newid);
            Notifications.QueueToAll(sid, "patternlist-changed|" + newid);

            s.SaveToFile("testsong-temp.xml");

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");

        }

        private void ClonePattern(WebContext context)
        {
            string newid = context.Request.GetParameter("clonepattern");
            string sid = context.Request.GetParameter("session");
            string pat = context.Request.GetParameter("pattern");
            string nam = context.Request.GetParameter("name");

            Song s = State.CurrentSong;

            Pattern p = s.GetPatternByID(pat);
            p = p.Clone();
            p.ID = newid;
            p.Name = nam;
            s.Patterns.Add(p);

            Console.WriteLine("Cloned pattern: " + nam);

            Notifications.QueueToAll(sid, "pattern-changed|" + newid);
            Notifications.QueueToAll(sid, "patternlist-changed|" + newid);


            s.SaveToFile("testsong-temp.xml");

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");
        }

        private void RenamePattern(WebContext context)
        {
            string oldpat = context.Request.GetParameter("renamepattern");
            string sid = context.Request.GetParameter("session");
            string nam = context.Request.GetParameter("name");
            Song s = State.CurrentSong;

            Pattern p = s.GetPatternByID(oldpat);
            p.Name = nam;

            Console.WriteLine("Renamed pattern: " + nam);

            Notifications.QueueToAll(sid, "pattern-renamed|" + oldpat);
            Notifications.QueueToAll(sid, "patternlist-changed|" + oldpat);

            s.SaveToFile("testsong-temp.xml");

            context.Response.ContentType = "text/plain";
            context.Response.Write("OK");
        }

    }
}
