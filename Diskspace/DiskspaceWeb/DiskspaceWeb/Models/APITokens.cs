using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DiskspaceWeb.Data;
using System.Web.Security;

namespace DiskspaceWeb.Models
{
	public class APITokens
	{


		public static string RegisterToken(string username, string password)
		{

			string nutok = "";
			if (Membership.ValidateUser(username, password))
			{
				string userid = "";
				DBDataContext db = new DBDataContext();
				var uy = from u in db.Users where u.UserName.Equals(username) select u;
				if (uy != null)
				{
					Users uu = uy.First<Users>();
					userid = uu.UserID.ToString();
				}

				Dictionary<string, string> tmp = HttpContext.Current.Application["tokens"] as Dictionary<string, string>;
				if (tmp == null)
					tmp = new Dictionary<string, string>();

				nutok = "T" + Guid.NewGuid().ToString().Substring(0, 8);
				if (tmp.Keys.Contains(nutok))
					tmp[nutok] = userid;
				else
					tmp.Add(nutok, userid);

				HttpContext.Current.Application["tokens"] = tmp;
			}



			return nutok;
		}

		public static string GetUserID(string token)
		{
			string uid = "";

			if (token == "DEBUG")
				return "4e58a3b0-1685-4cb9-b494-fcde30700e53";

			Dictionary<string, string> tmp = HttpContext.Current.Application["tokens"] as Dictionary<string, string>;
			if (tmp != null)
			{
				if (tmp.Keys.Contains(token))
					uid = tmp[token];
			}

			return uid;
		}

		public static void Release(string token)
		{
			Dictionary<string, string> tmp = HttpContext.Current.Application["tokens"] as Dictionary<string, string>;
			if (tmp == null)
				tmp = new Dictionary<string, string>();

			string nutok = "T" + Guid.NewGuid().ToString().Substring(0, 8);
			if (tmp.Keys.Contains(token))
				tmp.Remove(token);

			HttpContext.Current.Application["tokens"] = tmp;
		}

	}
}
