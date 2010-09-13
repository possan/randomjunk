using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;

namespace MenuServer.Server.Web
{
    public class Server
    {
        public Server()
        {
            Port = 8000;
            Host = "localhost";
        }

        public string Host;
        public int Port;

        ListenerThread listener;
        Thread listenerthread;

        public void Start()
        {
            listener = new ListenerThread();
            listener.Port = Port;
            listener.Host = Host;
            listenerthread = new Thread(new ThreadStart(listener.Run));
            listenerthread.Start();
            Thread.Sleep(1000);
        }

        public void Stop()
        {
            listener.Stop();
            Thread.Sleep(500);
            listenerthread.Abort();
            Thread.Sleep(500);
        }
    }
}
