using System;
using System.Collections.Generic;
using System.Text;
using System.Web;
using Norkay.Utilities;

public class AjaxUtilities
{
	public static bool HasParameter(string name)
	{
		if (HttpContext.Current != null)
			if (HttpContext.Current.Request[name] != null)
				return true;

		return false;
	}

	public static string GetStringParameter(string name)
	{
		return GetStringParameter(name, "");
	}

	public static bool GetBoolParameter(string name)
	{
		return GetBoolParameter(name, false);
	}

	public static string CurrentUserName
	{
		get
		{
			string ret = "";
			if (HttpContext.Current != null)
				if (HttpContext.Current.User.Identity.IsAuthenticated)
					ret = HttpContext.Current.User.Identity.Name;

			return ret;
		}
	}

	public static bool CurrentUserAuthenticated
	{
		get
		{
			bool ret = false;
			if (HttpContext.Current != null)
				if (HttpContext.Current.User.Identity.IsAuthenticated)
					ret = HttpContext.Current.User.Identity.IsAuthenticated;

			return ret;
		}
	}

	public static string GetStringParameter(string name, string defaultvalue)
	{
		if (HttpContext.Current != null)
			if (HttpContext.Current.Request[name] != null)
				return HttpContext.Current.Request[name].Trim();

		return defaultvalue;
	}

	public static int GetIntParameter(string name)
	{
		return GetIntParameter(name, 0);
	}

	public static int GetIntParameter(string name, int defaultvalue)
	{
		int ret = defaultvalue;
		if (HttpContext.Current != null)
			if (HttpContext.Current.Request[name] != null)
				int.TryParse(HttpContext.Current.Request[name].Trim(), out ret);
		return ret;
	}

	public static bool GetBoolParameter(string name, bool defaultvalue)
	{
		bool ret = defaultvalue;
		if (HttpContext.Current != null)
			if (HttpContext.Current.Request[name] != null)
				if (!bool.TryParse(HttpContext.Current.Request[name].Trim(), out ret))
				{
					int i = defaultvalue ? 1 : 0;
					int.TryParse(HttpContext.Current.Request[name].Trim(), out i);
					ret = (i == 1);
				}

		return ret;
	}

	/*
	public static void ReturnString(string content, string contenttype)
	{
		if (HttpContext.Current != null)
		{
			HttpContext.Current.Response.ContentType = contenttype;
			HttpContext.Current.Response.Write(content);
		}
	}
	*/

	public static void ReturnString(string content, string contenttype)
	{
		if (HttpContext.Current != null)
		{
			HttpContext.Current.Response.ContentType = contenttype;
			HttpContext.Current.Response.Write(content);
		}
	}

	public static void ReturnString(string plaintext)
	{
		ReturnString(plaintext, "text/plain");
	}

	public static void ReturnJavascript(string jsstring)
	{
		ReturnString(jsstring, "text/javascript");
	}

	public static void ReturnJSON(JSONWriter jw)
	{
		ReturnJavascript(jw.ToString(JSONFormatting.Pretty));
	}

	public static void ReturnJSON(string jsonstring)
	{
		ReturnJavascript(jsonstring);
	}

	public static void ReturnHTML(string html)
	{
		ReturnString(html, "text/html");
	}

}
