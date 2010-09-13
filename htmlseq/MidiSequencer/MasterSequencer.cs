using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace MidiSequencer
{
    public class MasterSequencer
    {
        public Song CurrentSong;

        public MasterSequencer()
        {
            CurrentSong = null;
        }

        void QueuePatternEvents(Pattern p, Instrument ins, float step0, float step1, int transpose, int volume)
        {
            // Console.WriteLine("Handle events between step: " + step0.ToString("0.0000") + " - " + step1.ToString("0.0000"));

            int step0mult = (int)(100.0 * step0);
            int step1mult = (int)(100.0 * step1);

            // interpolera fram all automations också!
            // p.Automations.Count

            for (int k = 0; k < p.Notes.Count; k++)
            {
                PatternNote pn = p.Notes[k];
                if (pn.From >= step0mult && pn.From < step1mult)
                {
                    //      Console.WriteLine("Note on - key=" + pn.Note + ", velocity=" + pn.Velocity + ", instrument=" + p.InstrumentID);
                    if (volume > 0)
                        if (ins != null)
                            MidiWrapper.QueueNoteOn(ins.MidiDevice, ins.MidiChannel, pn.Note + transpose, (pn.Velocity * volume) / 100);
                }
                else if (pn.To >= step0mult && pn.To < step1mult)
                {
                    //    Console.WriteLine("Note off - key=" + pn.Note + ", instrument=" + p.InstrumentID);
                    if (ins != null)
                        MidiWrapper.QueueNoteOff(ins.MidiDevice, ins.MidiChannel, pn.Note + transpose);
                }
            }
        }

        public void TimerTick(double deltaTime)
        {
            //      int SUBSTEPS = 2;
            //    int SUBSHIFT = 1;

            float TIMERRESOLUTION = 65536.0f;

            int subtickadd = (int)(deltaTime * TIMERRESOLUTION);

            Song s = CurrentSong;
            s.SubTicks += subtickadd;

            float beatspersecond = (float)s.BPM / 60.0f;/// (float)s.Beats1;

            float barspersecond = beatspersecond * (float)s.Beats1;

            float secondsperbeat = 1.0f / beatspersecond;

            float secondsperbar = 1.0f / barspersecond;

            int ticksperbar = (int)(TIMERRESOLUTION / barspersecond);

            MidiWrapper.ClearQueue();


            bool jammode = true;

            if (jammode)
            {
                //
                // Starta nya köade patterns i jamläget
                //
                //         Console.WriteLine("subsampling: "+ s.SubTicks + " / " + ticksperbar);

                if (s.SubTicks >= ticksperbar)
                {
                    if (s.Ticks == 0)
                    {
                        // Console.WriteLine("BPM: " + s.BPM +" ("+s.Beats1+"/"+s.Beats2+" measure)");
                        // Console.WriteLine("Beats per second: " + beatspersecond);
                        // Console.WriteLine("Bars per second: " + barspersecond);
                        // Console.WriteLine("Seconds per beat: " + secondsperbeat);

                        Console.WriteLine("FIRST JAM-BEAT (#" + Thread.CurrentThread.ManagedThreadId + ")");
                        for (int j = 0; j < s.Tracks.Count; j++)
                        {
                            SongTrack st = s.Tracks[j];
                            if (st.CuedPatternID != null)
                            {
                                Console.WriteLine("Cueing pattern " + st.CuedPatternID + " on track " + st.Name);
                                st.CurrentPatternID = st.CuedPatternID;
                                st.CurrentPatternObj = s.GetPatternByID(st.CuedPatternID);
                                if (st.CurrentPatternObj != null)
                                    st.CurrentInstrumentObj = s.GetInstrumentByID(st.CurrentPatternObj.InstrumentID);

                                if (st.CurrentPatternObj != null)
                                    Console.WriteLine("Cued pattern: " + st.CurrentPatternObj.Name + " (" + st.CurrentPatternObj.Duration + " steps)");
                                st.CuedPatternID = null;
                                st.LastPatternTick = 0;
                                st.PatternTick = 0;
                                st.PatternSubTick = 0;
                                st.CurrentPatternDurationTicks = 0;

                                // if (st.CurrentPatternObj != null)
                                //   st.CurrentPatternDuration = st.CurrentPatternObj.Duration;

                                if (st.CurrentPatternObj != null)
                                    st.CurrentPatternDurationTicks = (int)(st.CurrentPatternObj.Duration * secondsperbar * TIMERRESOLUTION);

                                Console.WriteLine("Cued pattern length in ticks: " + st.CurrentPatternDurationTicks);

                                if (st.CurrentInstrumentObj != null)
                                    Console.WriteLine("Cued pattern instrument: " + st.CurrentInstrumentObj.Name);
                                Console.WriteLine();
                            }
                        }
                    }
                }





                /*

                Console.Write("TRACKS: ");
                for (int j = 0; j < s.Tracks.Count; j++)
                {
                    SongTrack st = s.Tracks[j];
                    if (st.CurrentPatternObj != null)
                    {

                        long tick0 = st.PatternSubTick;
                        float patstep0 = (float)tick0 / (float)ticksperbar;
                        Console.Write(st.PatternTick.ToString("00") + "." + st.PatternSubTick.ToString("00000") + " (" + patstep0.ToString("0.00") + ")  ");
                    }
                }
                // Console.Write(" STC=" + );
                Console.WriteLine();
                
                */

                bool anysolo = false;
                for (int j = 0; j < s.Tracks.Count; j++)
                {
                    SongTrack st = s.Tracks[j];
                    if (st.Solo)
                        anysolo = true;
                }


                for (int j = 0; j < s.Tracks.Count; j++)
                {
                    SongTrack st = s.Tracks[j];

                    if (st.CurrentPatternObj != null)
                    {

                        long tick0 = st.PatternSubTick;

                        long tick1 = st.PatternSubTick + subtickadd;
                        // st.PatternSubTick = t1;

                        float patstep0 = tick0 / (float)ticksperbar;
                        float patstep1 = tick1 / (float)ticksperbar;

                        int calcvol = st.Volume;
                        if (anysolo)
                        {
                            if (!st.Solo)
                                calcvol = 0;
                        }
                        else
                        {
                            if (st.Muted)
                                calcvol = 0;
                        }

                        if (tick1 >= st.CurrentPatternDurationTicks)
                        {
                            float patstep2 = st.CurrentPatternDurationTicks / (float)ticksperbar;

                            QueuePatternEvents(st.CurrentPatternObj, st.CurrentInstrumentObj, patstep0, patstep2, st.Transpose, calcvol);

                            // Console.WriteLine("Handle events between subtick: " + tick0.ToString("000000") + " (" + patstep0.ToString("0.0") + ") - " + st.CurrentPatternDurationTicks.ToString("000000") + " (" + patstep2.ToString("0.0") + ")");
                            tick1 -= st.CurrentPatternDurationTicks;
                            // Console.WriteLine("Handle events between subtick: " + 0.ToString("000000") + " (" + 0.ToString("0.0") + ") - " + tick1.ToString("000000") + " (" + patstep1.ToString("0.0") + ")");

                            float patstep3 = tick1 / (float)ticksperbar;
                            QueuePatternEvents(st.CurrentPatternObj, st.CurrentInstrumentObj, 0, patstep3, st.Transpose, calcvol);

                        }
                        else
                        {
                            //    Console.WriteLine("Handle events between subtick: " + tick0.ToString("000000") + " (" + patstep0.ToString("0.0") + ") - " + tick1.ToString("000000") + " (" + patstep1.ToString("0.0") + ")");

                            QueuePatternEvents(st.CurrentPatternObj, st.CurrentInstrumentObj, patstep0, patstep1, st.Transpose, calcvol);
                        }

                        st.PatternSubTick = tick1;

                    }
                }

                /*

                for (int j = 0; j < s.Tracks.Count; j++)
                {
                    SongTrack st = s.Tracks[j];

                    if (st.CurrentPatternObj != null)
                    {
                        long t0 = st.PatternTick;
                        long t1 = st.PatternTick + stc;

                        if (t1 > t0)
                        {
                            // hämta alla events mellan tidpunkterna...
                            Console.WriteLine("Handling events between " + t0 + " -> " + t1);
                        }

                        st.LastPatternTick = t1;
                    }
                }
                */


                if (s.SubTicks >= ticksperbar)
                {
                    // stega frammåt i den globala räknaren
                    s.Ticks++;
                    if (s.Ticks >= s.Beats1 * s.Beats2)
                        s.Ticks = 0;
                    s.SubTicks -= ticksperbar;
                }

            }
            else
            {

                /*
                bool newbeat = true;
                if (newbeat)
                {
                    MidiWrapper.ClearQueue();

                    // låt sången gå till nästa step, starta nya patterns i alla tracks om det behövs

                    // låt livesettet gå till nästa step, starta nya patterns om en ny beat har påbörjats

                    for (int j = 0; j < s.Tracks.Count; j++)
                    {
                        SongTrack st = s.Tracks[j];

                        // st.PatternSubTick++;
                        st.PatternTick ++;
                    }

                    int barlen = s.Beats1 * s.Beats2 * SUBSTEPS;
                    if (barlen < 1)
                        barlen = 1;
                    if ((s.Ticks % barlen) == 0)
                    {
                        Console.WriteLine("FIRST BEAT (#" + Thread.CurrentThread.ManagedThreadId + ")");
                        for (int j = 0; j < s.Tracks.Count; j++)
                        {
                            SongTrack st = s.Tracks[j];

                            if (st.CuedPatternID != null)
                            {
                                Console.WriteLine("Cueing pattern " + st.CuedPatternID + " on track " + st.Name);
                                st.CurrentPatternID = st.CuedPatternID;
                                st.CurrentPatternObj = s.GetPatternByID(st.CuedPatternID);
                                st.CuedPatternID = null;
                                st.PatternTick = 0;
                                st.PatternSubTick = 0;
                            }
                        }
                    }

                    // debug print

                     // Console.Write("BEAT ");
                    //for (int j = 0; j < s.Tracks.Count; j++)
                    //{
                    //    SongTrack st = s.Tracks[j];

                    //    if (st.PatternTick % SUBSTEPS == 0)
                    //    {
                    //        Console.Write("| ");
                    //        Console.Write((st.PatternTick >> SUBSHIFT).ToString("000") + "." + (st.PatternTick % SUBSTEPS).ToString("000") + " ");
                    //        //		Console.WriteLine("track #" + j + " \"" + st.Name + "\" -> pattern: \"" + st.CurrentPatternID + "\", step: "+st.PatternTick+"");
                    //    }
                    //}
                    //Console.WriteLine();

    // trigger events
                    for (int j = 0; j < s.Tracks.Count; j++)
                    {
                        SongTrack st = s.Tracks[j];


                        if (st.CurrentPatternID != "")
                        {
                            Pattern p = st.CurrentPatternObj;
                            if (p != null)
                            {
                                Instrument ins = s.GetInstrumentByID(p.InstrumentID);

                                if (st.PatternTick >= p.Duration * SUBSTEPS)
                                {
                                    // LOOP PATTERN
                                    st.PatternTick = 0;
                                }

                                for (int k = 0; k < p.Notes.Count; k++)
                                {
                                    PatternNote pn = p.Notes[k];
                                    if (pn.From > st.LastPatternTick && pn.From <= st.PatternTick)
                                    {
                                  //      Console.WriteLine("Note on - key=" + pn.Note + ", velocity=" + pn.Velocity + ", instrument=" + p.InstrumentID);
                                        if (ins != null)
                                            MidiWrapper.QueueNoteOn(ins.MidiDevice, ins.MidiChannel, pn.Note, pn.Velocity);
                                    }
                                    else if (pn.To > st.LastPatternTick && pn.To <= st.PatternTick )
                                    {
                                    //    Console.WriteLine("Note off - key=" + pn.Note + ", instrument=" + p.InstrumentID);
                                        if (ins != null)
                                            MidiWrapper.QueueNoteOff(ins.MidiDevice, ins.MidiChannel, pn.Note);
                                    }
                                }
                            }
                        }

                        st.LastPatternTick = st.PatternTick;

                    }

                    // låt alla patterns gå till nästa step
                }
                     */



                // else
                // {
                // Console.WriteLine("waiting for subsampling tick");
                // }

            }

            MidiWrapper.ProcessQueue();
        }
    }
}
