using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Net.Sockets;
using System.Net;

namespace MenuServer.Server.Web
{
    public class ListenerThread
    {
        public string Host;
        public int Port;
        public bool Running;
        Socket sock;

        public ListenerThread()
        {
            Host = "localhost";
            Port = 8000;
            Running = true;
        }

        public void Stop()
        {
            Running = false;
            sock.Close();
        }

        public void Run()
        {
            Running = true;

            Console.WriteLine("Listener: Starting on port " + Port);
            Thread.Sleep(500);

            sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
            sock.Bind(new IPEndPoint(Dns.Resolve(Host).AddressList[0], Port));
            sock.Listen(0);

            while (Running && Thread.CurrentThread.ThreadState == ThreadState.Running)
            {
                Socket conn = null;

                try
                {
                    conn = sock.Accept();
                }
                catch (Exception)
                {
                }
                if (conn != null)
                {
                    Console.WriteLine("Got incoming connection!");
                    RequestThread requestthread = new RequestThread();
                    requestthread.Connection = conn;

                    Thread requestthreadthread = new Thread(new ThreadStart(requestthread.Run));
                    requestthreadthread.Start();
                }
            }

            Console.WriteLine("Listener: Stopping thread.");
            sock.Disconnect(false);
            sock.Close();

            Console.WriteLine("Listener: Stopped.");
            Thread.CurrentThread.Abort();
        }
    }
}
