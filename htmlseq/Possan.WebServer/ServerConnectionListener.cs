using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;
using System.Threading;
using System.Net;

namespace Possan.WebServer
{
	class ServerConnectionListener
	{
		public ServerConnectionListener()
		{
			Owner = null;
			sock = null;
		}

		public BaseWebServer Owner;
		private Socket sock;
		private Thread listenerthread;

		public void Start(string hostname, int port)
		{
			Console.WriteLine("Creating socket..");
			sock = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
			// IPHostEntry he = System.Net.Dns.GetHostEntry(hostname);
			Console.WriteLine("Binding..");
			sock.Bind(new System.Net.IPEndPoint(IPAddress.Any, port));
			Console.WriteLine("Start listening..");
			sock.Listen(0);

			ThreadStart ts = new ThreadStart(this.Loop);

            listenerthread = new Thread(ts);
            listenerthread.Priority = ThreadPriority.Lowest;
			listenerthread.Start();

			Console.WriteLine("Waiting for connection..");
		}

		protected void Loop()
		{
			while (sock != null && sock.IsBound)
			{
				try
				{
					Socket conn = sock.Accept();
					if (conn != null)
						ClientConnectionThread.Create(Owner, conn);
				}
				catch (Exception)
				{
					// Console.WriteLine(z.ToString());
				}
				Thread.Sleep(1);
			}
		}

		public void Stop()
		{
			if (sock != null)
			{
				// sock.Disconnect(false);
				sock.Close();
				sock = null;
			}
			Thread.Sleep(100);

			listenerthread.Abort();
			Thread.Sleep(100);

		}
	}
}
