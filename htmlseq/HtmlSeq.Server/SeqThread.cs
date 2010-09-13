using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace HtmlSeq.Server
{
    class SeqThread
    {
        public SeqThread()
        {
        }

        bool keeprunning;
        Thread t;

        public void Start()
        {
            keeprunning = true;
            ThreadStart ts = new ThreadStart(Run);
            t = new Thread(ts);
            t.Priority = ThreadPriority.AboveNormal;
            t.Start();
        }

        public void Stop()
        {
            keeprunning = false;
            t.Abort();
        }

        public void Run()
        {
            Win32.HiPerfTimer2 timer = new Win32.HiPerfTimer2();
            timer.Start();
            double lasttimer = timer.DeltaTime;
            while (keeprunning)
            {
                double t = timer.DeltaTime;
                double dT = t - lasttimer;
                lasttimer = t;
                State.Sequencer.TimerTick(dT);
                Thread.Sleep(2);
            }

            timer.Stop();
        }
    }
}
