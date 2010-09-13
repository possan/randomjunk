using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;
using MidiSequencer;

namespace htmlseq_webapp
{
	public class Global : System.Web.HttpApplication
	{
		public static Song CurrentSong
		{
			get
			{
				if (HttpContext.Current.Application["cs"] == null)
				{
					Song s = Song.CreateDummySong();
					HttpContext.Current.Application["cs"] = s;
				}
				return HttpContext.Current.Application["cs"] as Song;
			}
			set
			{
				HttpContext.Current.Application["cs"] = value;
			}
		}

		protected void Application_Start(object sender, EventArgs e)
		{
			HtmlSeq.Common.SessionManager.Init();
			HtmlSeq.Common.Notifications.Init();

		}

		protected void Session_Start(object sender, EventArgs e)
		{

		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{

		}

		protected void Session_End(object sender, EventArgs e)
		{

		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
	}
}