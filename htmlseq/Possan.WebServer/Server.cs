using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Possan.WebServer
{
	public class Server
	{
		public Server()
		{
			OnRequest = null;
			alive = false;
		}

		private ServerConnectionListener connlistener;
		private bool alive = false;

		public void Start(string hostname, int port)
		{
			Console.WriteLine("Starting server...");
			connlistener = new ServerConnectionListener();
			connlistener.Owner = this;
			connlistener.Start(hostname, port);
			alive = true;
		}

		public bool IsAlive
		{
			get
			{
				return alive;
			}
		}

		public void Stop()
		{
			Console.WriteLine("Stopping server...");
			connlistener.Stop();
			alive =  false;
		}

		public void FireOnRequest(WebContext ctxt)
		{
			if( OnRequest != null )
				OnRequest(ctxt);
		}

		public event WebRequestHandler OnRequest;
	}

	// public delegate void DebugMessageHandler( string msg );
	public delegate void WebRequestHandler( WebContext context ); 
}
