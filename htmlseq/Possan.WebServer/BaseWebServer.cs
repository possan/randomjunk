using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Remoting.Messaging;

namespace Possan.WebServer
{
    public class BaseWebServer
    {
        public BaseWebServer()
        {
           // OnRequest = null;
            alive = false;
        }

        public virtual void HandleRequest(WebContext context)
        {
            context.Response.StatusCode = 404;
            context.Response.Write("ERROR");
        }

        private ServerConnectionListener connlistener;
        private bool alive = false;

        public void Start(string hostname, int port)
        {
            Console.WriteLine("Starting server thread...");

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
            alive = false;
        }

        /*

        public void FireOnRequest(WebContext ctxt)
        {
            OnRequest.BeginInvoke(ctxt, new AsyncCallback(AfterFetch), null);
        }

        static void AfterFetch(IAsyncResult result)
        {
            Console.WriteLine("Delegate completed.");
            AsyncResult async = (AsyncResult)result;
            WebRequestHandler fetcher = (WebRequestHandler)async.AsyncDelegate;
            fetcher.EndInvoke(async);
        }

        public event WebRequestHandler OnRequest;
         * */
    }

  //  public delegate void WebRequestHandler(WebContext context);
}
