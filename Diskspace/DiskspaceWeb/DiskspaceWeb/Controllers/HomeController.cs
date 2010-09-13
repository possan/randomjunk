using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DiskspaceWeb.Data;

namespace DiskspaceWeb.Controllers
{
	[HandleError]
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			ViewData["Message"] = "Welcome to ASP.NET MVC!";



			DBDataContext db = new DBDataContext();
			var users = from u in db.Users select u;
			foreach (Users u in users)
				HttpContext.Response.Write("users: " + u.UserName + "<br/>");
	
			return View();
		}

		public ActionResult About()
		{
			return View();
		}
	}
}
