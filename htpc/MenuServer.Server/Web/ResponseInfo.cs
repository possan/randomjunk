using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Server.Web
{
    public class ResponseInfo
    {
        public int StatusCode;
        public string StatusText;

        public string ContentType;

        public Encoding ContentEncoding;
        public string Content;

        public ResponseInfo()
        {
            StatusCode = 400;
            StatusText = "Error";

            ContentType = "text/plain";
            ContentEncoding = Encoding.UTF8;

            Content = "";
        }

        public byte[] HeaderBytes;
        public byte[] ContentBytes;

        public void Build()
        {
            ContentBytes = ContentEncoding.GetBytes(Content);

            StringBuilder headerbuilder = new StringBuilder();
            headerbuilder.Append("HTTP/1.1 ").Append(StatusCode).Append(" ").Append(StatusText).Append("\r\n");
            headerbuilder.Append("Content-Type: ").Append(ContentType).Append("; charset=").Append(ContentEncoding.BodyName).Append("\r\n");
            //            headerbuilder.Append("Content-Encoding: ").Append(ContentEncoding.BodyName).Append("\r\n");
            headerbuilder.Append("Content-Length: ").Append(ContentBytes.Length).Append("\r\n");
            headerbuilder.Append("\r\n"); ;
            string headerstring = headerbuilder.ToString();
            Console.WriteLine("Response header: ");
            Console.WriteLine(headerstring);
            Console.WriteLine("Response content: ");
            Console.WriteLine(Content);
            HeaderBytes = Encoding.ASCII.GetBytes(headerstring);

            // byte[] ret = new byte[ 
        }
    }
}
