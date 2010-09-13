using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using DiskspaceWeb.Data;
using DiskspaceWeb.Models;
using Norkay.Utilities;

namespace DiskspaceWeb.Controllers
{
	public class ApiController : Controller
	{
		public ActionResult Index(string id)
		{
			return new MyResultHack();
		}

		public ActionResult Auth(string method, string id)
		{
			if (method == "login")
			{
				string user = Request["username"];
				string pass = Request["password"];

				string token = APITokens.RegisterToken(user, pass);

				return new JSONResponseResult("{ status:'ok', token:'" + token + "' }");
			}
			else if (method == "logout")
			{
				string token = Request["token"];
				string userid = APITokens.GetUserID(token);
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

				APITokens.Release(token);
				return new JSONResponseResult("ok");
			}

			return new JSONResponseResult("unknown auth-command; method=" + method + ", id=" + id);
		}

		public ActionResult Computers(string method, string id)
		{
			string token = Request["token"];
			string userid = APITokens.GetUserID(token);

			if (method == "get")
			{

			}
			else if (method == "list")
			{
				string username = Request["user"];

				JSONWriter jw = new JSONWriter();
				jw.Class();
				jw.Array("computers");

				DBDataContext db = new DBDataContext();

				IEnumerable<Computers> comps = from c in db.Computers orderby c.ComputerName ascending select c;

				if (!string.IsNullOrEmpty(username))
					comps = from c in comps
							where c.UserID.ToString().Equals(username)
							select c;

				foreach (Computers c in comps)
				{
					jw.Class();
					jw.Field("id", c.ID);
					jw.Field("name", c.ComputerName);
					if (c.CreatedDate.HasValue)
						jw.Field("date", c.CreatedDate.Value.ToString("R"));
					if (c.Users != null)
					{
						jw.Field("userid", c.Users.UserID.ToString());
						jw.Field("username", c.Users.UserName);
					}

					//					int totalused = (from v in db.Volumes, m in v.Measures select v.MeasureUsed select ).Sum();

					int? totalused2 = 0;
					try
					{
						totalused2 = (
							from v2 in db.Volumes
							where v2.ComputerID.Equals(c.ID)
							select (
							from m in v2.Measures where m.VolumeID.Equals(v2.ID) orderby m.MeasureDate descending select m.MeasureUsed
							).First()
							).Sum();

					}
					catch (Exception)
					{
					}

					int? totalsize2 = 0;
					try
					{
						totalsize2 = (
							from v2 in db.Volumes
							where v2.ComputerID.Equals(c.ID)
							select (
							from m in v2.Measures where m.VolumeID.Equals(v2.ID) orderby m.MeasureDate descending select m.MeasureSize
							).First()
							).Sum();
					}
					catch (Exception)
					{
					}

					if (totalsize2.HasValue)
						jw.Field("totalsize", totalsize2.Value);
					else
						jw.Field("totalsize", 0);

					if (totalused2.HasValue)
						jw.Field("totalused", totalused2.Value);
					else
						jw.Field("totalused", 0);

					jw.Array("volumes");

					IEnumerable<Volume> vols = from v in c.Volumes orderby v.VolumeName select v;
					foreach (Volume v in vols)
					{
						jw.Class();
						jw.Field("id", v.ID);
						if (v.VolumeName != null)
							jw.Field("name", v.VolumeName);
						else
							jw.Field("name", "");
						int? numsamples = null;
						try
						{
							numsamples = (from m in v.Measures where m.VolumeID.Equals(v.ID) select m).Count();
						}
						catch (Exception)
						{
						}


						DateTime? lastsample = null;
						try
						{
							lastsample = (from m in v.Measures where m.VolumeID.Equals(v.ID) orderby m.MeasureDate descending select m.MeasureDate).First();
						}
						catch (Exception)
						{
						}

						int? totalused = 0;
						try
						{
							totalused = (from m in v.Measures where m.VolumeID.Equals(v.ID) orderby m.MeasureDate descending select m.MeasureUsed).First();
						}
						catch (Exception)
						{
						}

						int? totalsize = 0;
						try
						{
							totalsize = (from m in v.Measures where m.VolumeID.Equals(v.ID) orderby m.MeasureDate descending select m.MeasureSize).First();
						}
						catch (Exception)
						{
						}

						jw.Field("samples", numsamples.Value);
						if (lastsample.HasValue)
							jw.Field("last", lastsample.Value.ToString("R"));
						jw.Field("used", totalused.Value);
						jw.Field("size", totalsize.Value);
						jw.End();
					}
					jw.End();
					jw.End();

				}

				jw.End();
				jw.End();

				return new JSONResponseResult(jw.ToString(JSONFormatting.Pretty));

			}
			else if (method == "add")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

				string un = Request["username"];

				// int compid = 0;
				// int.TryParse(Request["computer"], out compid);

				int volid = 0;
				int.TryParse(Request["volume"], out volid);

				int ds = 0;
				int.TryParse(Request["disksize"], out ds);

				int du = 0;
				int.TryParse(Request["diskused"], out du);

				DBDataContext db = new DBDataContext();

				var user = from u in db.Users where u.UserName.Equals(un) select u;
				if (user != null)
				{

					Measure m = new Measure();

					m.MeasureSize = ds;
					m.MeasureUsed = du;
					m.VolumeID = volid;
					m.MeasureDate = DateTime.Now;

					db.Measures.InsertOnSubmit(m);
					db.SubmitChanges();

					return new JSONResponseResult("ok");
				}
			}
			else if (method == "remove")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");
			}

			return new JSONResponseResult("unknown computers-command; method=" + method + ", id=" + id);
		}

		public ActionResult Volumes(string method, string id)
		{
			string token = Request["token"];
			string userid = APITokens.GetUserID(token);

			if (method == "get")
			{
				return new JSONResponseResult("ok");
			}
			else if (method == "list")
			{
				int computerid = 0;
				if (!string.IsNullOrEmpty(Request["token"]))
					int.TryParse(Request["token"], out computerid);

				JSONWriter jw = new JSONWriter();
				jw.Class();
				jw.Array("volumes");

				DBDataContext db = new DBDataContext();

				var vols = from v in db.Volumes select v;

				if (computerid != 0)
					vols = from v in vols where v.ComputerID.Equals(computerid) select v;

				foreach (Volume v in vols)
				{
					jw.Class();
					jw.Field("id", v.ID);
					jw.Field("name", v.VolumeName);
					if (v.Computers != null)
					{
						jw.Field("computerid", v.Computers.ID);
						jw.Field("computername", v.Computers.ComputerName);
					}
					jw.End();
				}

				jw.End();
				jw.End();

				return new JSONResponseResult(jw.ToString(JSONFormatting.Pretty));
			}
			else if (method == "add")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

				int compid = 0;
				int.TryParse(Request["computer"], out compid);

				int ds = 0;
				int.TryParse(Request["disksize"], out ds);

				int du = 0;
				int.TryParse(Request["diskused"], out du);

				DBDataContext db = new DBDataContext();

				Volume v = new Volume();
				v.ComputerID = compid;
				v.CreatedDate = DateTime.Now;

				db.Volumes.InsertOnSubmit(v);
				db.SubmitChanges();

				return new JSONResponseResult("{ status:'ok', id:'" + v.ID + "' }");
			}
			else if (method == "remove")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");
			}

			return new JSONResponseResult("unknown volumes-command; method=" + method + ", id=" + id);
		}

		public ActionResult Measures(string method, string id)
		{
			string token = Request["token"];
			string userid = APITokens.GetUserID(token);

			if (method == "get")
			{

			}
			else if (method == "list")
			{
				int volumeid = 0;
				if (!string.IsNullOrEmpty(Request["volume"]))
					int.TryParse(Request["volume"], out volumeid);

				JSONWriter jw = new JSONWriter();
				jw.Class();
				jw.Array("measurements");

				DBDataContext db = new DBDataContext();

				var measurements = from m in db.Measures select m;
				if (volumeid != 0)
					measurements = from m in measurements where m.VolumeID.Equals(volumeid) select m;

				measurements = from m in measurements orderby m.MeasureDate descending select m;

				foreach (Measure m in measurements)
				{
					jw.Class();
					jw.Field("id", m.ID);
					if (m.MeasureDate.HasValue)
						jw.Field("date", m.MeasureDate.Value.ToString("R"));
					jw.Field("size", m.MeasureSize.ToString());
					jw.Field("used", m.MeasureUsed.ToString());
					jw.End();
				}

				jw.End();
				jw.End();

				return new JSONResponseResult(jw.ToString(JSONFormatting.Pretty));

			}
			else if (method == "add")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

				string un = Request["username"];

				// int compid = 0;
				// int.TryParse(Request["computer"], out compid);

				int volid = 0;
				int.TryParse(Request["volume"], out volid);

				int ds = 0;
				int.TryParse(Request["disksize"], out ds);

				int du = 0;
				int.TryParse(Request["diskused"], out du);

				DBDataContext db = new DBDataContext();

				var user = from u in db.Users where u.UserName.Equals(un) select u;
				if (user != null)
				{

					Measure m = new Measure();

					m.MeasureSize = ds;
					m.MeasureUsed = du;
					m.VolumeID = volid;
					m.MeasureDate = DateTime.Now;

					db.Measures.InsertOnSubmit(m);
					db.SubmitChanges();

					return new JSONResponseResult("ok");
				}
			}
			else if (method == "remove")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

			}

			return new JSONResponseResult("unknown measures-command; method=" + method + ", id=" + id);
		}

		public ActionResult Users(string method, string id)
		{
			string token = Request["token"];
			string userid = APITokens.GetUserID(token);

			if (method == "get")
			{

			}
			else if (method == "list")
			{

				JSONWriter jw = new JSONWriter();
				jw.Class();
				jw.Array("users");

				DBDataContext db = new DBDataContext();

				var users = from u in db.Users orderby u.UserName ascending select u;
				//	if (computerid != 0)
				//		vols = from v in vols where v.ComputerID.Equals(computerid) select v;

				foreach (Users u in users)
				{
					jw.Class();
					jw.Field("id", u.UserID.ToString());
					jw.Field("name", u.UserName);
					jw.End();
				}

				jw.End();
				jw.End();

				return new JSONResponseResult(jw.ToString(JSONFormatting.Pretty));

			}
			else if (method == "add")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");

			}
			else if (method == "remove")
			{
				if (string.IsNullOrEmpty(userid))
					return new JSONResponseResult("not authenticated");
			}

			return new JSONResponseResult("unknown users-command; method=" + method + ", id=" + id);
		}


	}

	class JSONResponseResult : ActionResult
	{
		string _value;
		int _statuscode;

		public JSONResponseResult(string data)
		{
			_value = data;
			_statuscode = 200;
		}

		public JSONResponseResult(string data, int status)
		{
			_value = data;
			_statuscode = status;
		}

		public override void ExecuteResult(ControllerContext context)
		{
			context.HttpContext.Response.ContentType = "text/plain";
			context.HttpContext.Response.StatusCode = _statuscode;
			context.HttpContext.Response.Write(_value);
		}
	}


	class MyResultHack : ActionResult
	{
		public override void ExecuteResult(ControllerContext context)
		{
			context.HttpContext.Response.ContentType = "text/plain";
			context.HttpContext.Response.Write("api result for: " + context.RequestContext.HttpContext.Request.Url);
		}
	}

}
