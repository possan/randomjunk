using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Sockets;

namespace Possan.WebServer
{

	public class WebResponse
	{
		List<string> m_Headers;
		Dictionary<string, string> m_HeaderValues;
		Socket m_Socket;

		public int StatusCode;
		public string ContentType;
		public string ContentEncoding;

		public static WebResponse Create(Socket sock)
		{
			WebResponse resp = new WebResponse();
			resp.m_Socket = sock;
			return resp;
		}

		WebResponse()
		{
			StatusCode = 200;
			ContentType = "text/plain";
			ContentEncoding = "utf-8";
			HeadersSent = false;
			m_Headers = new List<string>();
			m_HeaderValues = new Dictionary<string, string>();
			m_Socket = null;
		}

		public void SetHeader(string key, string val)
		{
			if (!m_Headers.Contains(key))
				m_Headers.Add(key);

			if (m_HeaderValues.ContainsKey(key))
				m_HeaderValues[key] = val;
			else
				m_HeaderValues.Add(key, val);
		}

		public bool HeadersSent;

		public void SendHeaders()
		{
			if (m_Socket != null)
			{
				if (!HeadersSent)
				{
					SetHeader("Content-Type", ContentType);
				//	SetHeader("Content-Encoding", ContentEncoding);

					string all = "";

					all += "HTTP/1.1 " + StatusCode + " OK\r\n";
					
					for (int k = 0; k < m_Headers.Count; k++)
					{
						string key = m_Headers[k];
						string val = "";
						if (m_HeaderValues.ContainsKey(key))
							val = m_HeaderValues[key];

						all += key + ": " + val + "\r\n";
					}
					all += "\r\n";

					// Console.WriteLine("Sending headers:");
					// Console.WriteLine( all);

					byte[] b = UTF8Encoding.ASCII.GetBytes(all);
					m_Socket.Send(b);

					HeadersSent = true;
				}
			}
		}

		public void Write(string data)
		{
			if (!HeadersSent)
				SendHeaders();

			if (m_Socket != null)
			{
				byte[] b = UTF8Encoding.UTF8.GetBytes(data);
				try
				{
					m_Socket.Send(b);
				}
				catch (Exception)
				{
				}
			}
		}

		public void Write(byte[] data)
		{
			if (!HeadersSent)
				SendHeaders();
			if (m_Socket != null)
			{
				try
				{
					m_Socket.Send(data);
				}
				catch (Exception)
				{
				}
			}
		}

		public void Flush()
		{
			if (m_Socket != null)
			{
			}
		}

		public void End()
		{
			if (!HeadersSent)
				SendHeaders();
			if (m_Socket != null)
			{
				try
				{
					m_Socket.Close();
				}
				catch (Exception)
				{
				}
				m_Socket = null;
			}
		}

	}
}
