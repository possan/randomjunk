using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace DiskspaceWeb
{
	// Note: For instructions on enabling IIS6 or IIS7 classic mode, 
	// visit http://go.microsoft.com/?LinkId=9394801

	public class MvcApplication : System.Web.HttpApplication
	{
		public static void RegisterRoutes(RouteCollection routes)
		{
			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

			routes.MapRoute("AP0", "api/{action}/{method}/{id}", new { controller = "API", action = "", objecttype = "", method="", typeaction = "", id = "" });
			
			routes.MapRoute("TL0", "toplist", new { controller = "Toplist", action = "Index", id = "" });

			routes.MapRoute("TL1", "toplist/computer/{id}", new { controller = "Toplist", action = "ByComputer", id = "" });
			routes.MapRoute("TL2", "toplist/volume/{id}", new { controller = "Toplist", action = "ByVolume", id = "" });
			routes.MapRoute("TL3", "toplist/user/{id}", new { controller = "Toplist", action = "ByVolume", id = "" });
			routes.MapRoute("TL4", "toplist/location/{id}", new { controller = "Toplist", action = "ByLocation", id = "" });

			routes.MapRoute("CO1", "computer/{id}", new { controller = "Computer", action = "Index", id = "" });
			routes.MapRoute("VO1", "volume/{id}", new { controller = "Volume", action = "Index", id = "" });
			routes.MapRoute("US1", "user/{id}", new { controller = "User", action = "Index", id = "" });

			routes.MapRoute("Default", "{controller}/{action}/{id}", new { controller = "Home", action = "Index", id = "" });
		}

		protected void Application_Start()
		{
			RegisterRoutes(RouteTable.Routes);
		}
	}
}