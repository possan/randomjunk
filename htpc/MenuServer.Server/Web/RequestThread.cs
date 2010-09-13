using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Net.Sockets;
using MenuServer.Types;

namespace MenuServer.Server.Web
{
    public class RequestThread
    {
        public Socket Connection;

        public void Run()
        {
            Console.WriteLine("Receiving request...");

            byte[] requestbytes = new byte[1000000];
            int requestlength = Connection.Receive(requestbytes, SocketFlags.None);

            Console.WriteLine("Got " + requestlength + " bytes of request:");
            string requeststring = Encoding.ASCII.GetString(requestbytes, 0, requestlength);
            Console.WriteLine(requeststring);
            Console.WriteLine();

            RequestInfo requestinfo = RequestInfo.Parse(requeststring);
            Console.WriteLine("Request path: " + requestinfo.Path);
            Console.WriteLine("Request querystring: " + requestinfo.QueryString);

            ResponseInfo responseinfo = new ResponseInfo();
            
            if (requestinfo.Path == "/index.xsl")
            {
            }
            else if (requestinfo.Path == "/index.xsd")
            {
            }
            else if (requestinfo.Path == "/index.css")
            {
            }
            else
            {
                // call

                IPage p = ProviderManager.GetPage(requestinfo.Path);
                if( p != null )
                {
                    string xml = PageSerializer.Serialize(p);
                    responseinfo.StatusCode = 200;
                    responseinfo.StatusText = "OK";
                    responseinfo.ContentType = "text/xml";
                    responseinfo.Content = xml; 
                }
            }
             
            responseinfo.Build();
            Connection.Send(responseinfo.HeaderBytes);
            Connection.Send(responseinfo.ContentBytes);

            Connection.Close();
            Thread.CurrentThread.Abort();
        }
    }
}
