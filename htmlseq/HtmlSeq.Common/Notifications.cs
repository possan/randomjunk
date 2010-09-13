using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HtmlSeq.Common
{
	public class Notifications
	{
		private static Dictionary<string, Queue<string>> m_Queues;

		public static void Init()
		{
			m_Queues = new Dictionary<string, Queue<string>>();
		}

		public static string Poll(string toid)
		{
			string ret = "";
			if (m_Queues.ContainsKey(toid))
			{
				if (m_Queues[toid].Count > 0)
				{
					string tmp = m_Queues[toid].Dequeue();
					ret = tmp;
				}
			}
			return ret;
		}

		public static void QueueTo(string toid, string data)
		{
			if (!m_Queues.ContainsKey(toid))
				m_Queues.Add(toid, new Queue<string>());

			m_Queues[toid].Enqueue(data);
		}

		public static void QueueToAll(string fromid, string data)
		{
			List<string> allids = SessionManager.GetActiveIDs();
			for (int j = 0; j < allids.Count; j++)
				if (allids[j] != fromid)
					QueueTo(allids[j], data);
		}
	}
}
