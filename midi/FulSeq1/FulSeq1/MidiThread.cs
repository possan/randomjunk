using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using Sanford.Multimedia.Midi;

namespace FulSeq1
{
    public class MidiThread
    {
        public int BPM;
        public int[] Retrig;
        public int[] Patt;
        int steptimer;
        public Sanford.Multimedia.Midi.OutputDevice Device;

        public MidiThread()
        {
            Retrig = new int[8];

            Patt = new int[64 * 16];

            for (int k = 0; k < 8; k++)
                Retrig[k] = 1;

            Device = null;
            BuildTrack();
        }

        public void BuildTrack()
        {
            float bps = (float)(BPM * 64.0f * 4.0f) / (float)60.0f;
            steptimer = (int)(1000.0f / bps);

            for (int j = 0; j < 64 * 16; j++)
                Patt[j] = -1;

            for (int j = 0; j < 16; j++)
            {
                int retrigs =  Retrig[j % 8];
                if (retrigs > 0)
                {
                    int retrigstep = 64 / (retrigs);
                    for (int k = 0; k < retrigs; k++)
                    {
                        int basepos = j * 64;
                        int retrigpos = basepos + (k * retrigstep);

                        //                    int subtrig = Retrig[j % 8];
                        Patt[retrigpos] = 36 + (j % 16);
                    }
                }
            }

        }

        public void Run()
        {
            // DateTime.Now.Millisecond

            int step = 0;
            int tick = 0;
            // Thread t = Thread.CurrentThread;
            while (Thread.CurrentThread.IsAlive)
            {
                if (tick > steptimer)
                {
                    int majorstep = step >> 6;
                    int substep = step & 63;

                    if (Patt[step] != -1)
                    {
                        Console.WriteLine("seq step: " + step + " > " + Patt[step]);
                        if (Device != null)
                            Device.Send(new ChannelMessage(ChannelCommand.NoteOn, 0, Patt[step], 100));
                    }

                    step++;
                    if (step >= 16 * 64)
                        step = 0;

                    tick = 0;
                }

                Thread.Sleep(1);
                tick++;
            }
        }
    }
}
