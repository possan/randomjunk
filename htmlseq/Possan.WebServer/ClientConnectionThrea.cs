using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using System.Threading;

namespace Possan.WebServer
{
    class ClientConnectionThread
    {
        protected ClientConnectionThread()
        {
            ClientSocket = null;
            Owner = null;
            buffer = new byte[25000];
        }

        public Socket ClientSocket;
        public BaseWebServer Owner;
        byte[] buffer;

        protected void Run()
        {
            ClientSocket.BeginReceive(buffer, 0, buffer.Length, SocketFlags.None, new AsyncCallback(AsyncReceiveDone), this);
        }

        void AsyncReceiveDone(IAsyncResult ar)
        {
            ClientConnectionThread thr = ar.AsyncState as ClientConnectionThread;
            int rd = thr.ClientSocket.EndReceive(ar);
            if (rd > 0)
            {
                string requestdata = Encoding.Default.GetString(thr.buffer, 0, rd);
            
                WebContext wc = new WebContext();
                wc.Request = WebRequest.Create(requestdata);
                wc.Response = WebResponse.Create(thr.ClientSocket);
                // for (int q = 0; q < 20; q++)
                // {
                // Console.WriteLine("delaying receive in thread #" + Thread.CurrentThread.ManagedThreadId);
                // Thread.Sleep(200);
                // }
                thr.Owner.HandleRequest(wc);
            }
        }

        public static void Create(BaseWebServer o, Socket s)
        {
            ClientConnectionThread thr = new ClientConnectionThread();
            thr.ClientSocket = s;
            thr.Owner = o;
            ThreadStart ts = new ThreadStart(thr.Run);
            Thread t = new Thread(ts);
            t.Start();
        }


    }
}
