using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;

namespace DiskspaceWeb.Controllers
{
	public class ToplistController : Controller
	{
		//
		// GET: /Toplist/

		public ActionResult Index()
		{
			ViewData["Test"] = "Testvariabel 1";
			return View("Index");
		}

		public ActionResult ByComputer()
		{
			ViewData["Test"] = "Testvariabel 2";
			return View("Index");
		}

		public ActionResult ByUser()
		{
			ViewData["Test"] = "Testvariabel 3";
			return View("Index");
		}

		public ActionResult ByVolume()
		{
			ViewData["Test"] = "Testvariabel 3";
			return View("Index");
		}

		public ActionResult ByCountry()
		{
			ViewData["Test"] = "Testvariabel 3";
			return View("Index");
		}

		public ActionResult ByLocation()
		{
			ViewData["Test"] = "Testvariabel 3";
			return View("Index");
		}
	}
}
