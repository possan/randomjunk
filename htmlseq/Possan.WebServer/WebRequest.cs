using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Possan.WebServer
{
	public class WebRequest
	{
		public static WebRequest Create(string rawdata)
		{
			WebRequest ret = new WebRequest();
			ret.Prepare(rawdata);
			return ret;
		}

		WebRequest()
		{
			LocalUri = "";
			LocalPath = "";
			UserAgent = "";
			QueryString = "";
			PostData = "";
			m_Headers = new Dictionary<string, string>();
			m_Parameters = new Dictionary<string, string>();
		}

		Dictionary<string, string> m_Headers;
		Dictionary<string, string> m_Parameters;

		public string LocalUri;

		public string LocalPath;

		public string UserAgent;

		public string QueryString;

		public string PostData;

		public string Method;

		public string HttpVersion;

		protected void Prepare(string rawdata)
		{
			// Console.WriteLine("Parsing request: " + rawdata);
			string[] lines = rawdata.Split('\n');

			bool afterblank = false;
			for (int j = 0; j < lines.Length; j++)
			{
				string line = lines[j].Trim();
				if (j == 0)
				{
					int i1 = line.IndexOf(" ");
					int i2 = line.LastIndexOf(" ");

					Method = line.Substring(0, i1).Trim();
					LocalUri = line.Substring(i1, i2 - i1).Trim();
					HttpVersion = line.Substring(i2).Trim();
				}
				else if (!afterblank)
				{
					if (line != "")
					{
						int colon = line.IndexOf(':');
						if (colon != -1)
						{
							string key = line.Substring(0, colon).Trim();
							string val = line.Substring(colon + 1).Trim();
							if (m_Headers.ContainsKey(key))
								m_Headers[key] = val;
							else
								m_Headers.Add(key, val);
						}
					}
					else
					{
						afterblank = true;
					}
				}
				else
				{
					PostData += line + "\n";
				}
			}

			int qi = LocalUri.IndexOf("?");
			if (qi != -1)
			{
				LocalPath = LocalUri.Substring(0, qi);
				QueryString = LocalUri.Substring(qi + 1);
			}
			else
			{
				LocalPath = LocalUri;
			}

			PostData = PostData.Trim();
			LocalPath = LocalPath.Trim();
			QueryString = QueryString.Trim();

			_ParseQS(QueryString);
			_ParseQS(PostData);
		}

		void _ParseQS(string qs)
		{
			string[] grps = qs.Split('&');
			for (int j = 0; j < grps.Length; j++)
			{
				string grp = grps[j];
				int ei = grp.IndexOf('=');
				if (ei != -1)
				{
					string key = grp.Substring(0, ei).Trim();
					string val = HttpUtility.UrlDecode(grp.Substring(ei + 1)).Trim();
					if (m_Parameters.ContainsKey(key))
						m_Parameters[key] = val;
					else
						m_Parameters.Add(key, val);
				}
			}
		}

		public string GetHeader(string name)
		{
			return GetHeader(name, "");
		}

		public string GetHeader(string name, string defaultvalue)
		{
			if (m_Headers.ContainsKey(name))
				return m_Headers[name];
			return defaultvalue;
		}

		public string GetParameter(string name)
		{
			return GetParameter(name, "");
		}

		public string GetParameter(string name, string defaultvalue)
		{
			if (m_Parameters.ContainsKey(name))
				return m_Parameters[name];
			return defaultvalue;
		}

		public int GetIntParameter(string name)
		{
			return GetIntParameter(name, 0);
		}

		public int GetIntParameter(string name, int defaultvalue)
		{
			int ret = defaultvalue;
			if (m_Parameters.ContainsKey(name))
			{
				int.TryParse(m_Parameters[name], out ret);
			}
			return ret;
		}

		public bool HasParameter(string name)
		{
			return m_Parameters.ContainsKey(name);
		}
	}
}
