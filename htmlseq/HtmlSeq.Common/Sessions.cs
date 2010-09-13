using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HtmlSeq.Common
{
	public class SessionManager
	{
		private static Dictionary<string, DateTime> m_LastUse;

		public static void Init()
		{
			m_LastUse = new Dictionary<string, DateTime>();
		}

		public static string CreateID()
		{
			string id = Guid.NewGuid().ToString().Substring(0, 8);
			KeepAlive(id);
			return id;
		}

		public static List<string> GetActiveIDs()
		{
			DateTime now = DateTime.Now;
			List<string> ret = new List<string>();
			lock (m_LastUse)
			{
				Dictionary<string, DateTime>.Enumerator enu = m_LastUse.GetEnumerator();
				while (enu.MoveNext())
				{
					if (enu.Current.Value.Subtract(now).TotalSeconds < 10)
						ret.Add(enu.Current.Key);
				}
			}
			return ret;

		}

		public static void KeepAlive(string sid)
		{
			lock (m_LastUse)
			{
				if (m_LastUse.ContainsKey(sid))
					m_LastUse[sid] = DateTime.Now;
				else
					m_LastUse.Add(sid, DateTime.Now);
			}
		}
	}
}
