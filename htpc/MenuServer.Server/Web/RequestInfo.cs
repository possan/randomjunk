using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Server.Web
{
    public class RequestInfo
    {
        public string Verb;
        public string Path;
        public string QueryString;
        public Dictionary<string, string> Variables;

        public RequestInfo()
        {
            Verb = "";
            Path = "";
            QueryString = "";
            Variables = new Dictionary<string, string>();
        }

        public static RequestInfo Parse(string input)
        {
            RequestInfo ret = new RequestInfo();

            string[] lines = input.Split('\n');
            for (int j = 0; j < lines.Length; j++)
            {
                string line = lines[j].Trim();
            //    Console.WriteLine("parsing request line #" + j + ": " + line);

                if (j == 0)
                {
                    int firstspace = line.IndexOf(' ');
                    int lastspace = line.LastIndexOf(' ');

                    ret.Verb = line.Substring(0, firstspace).Trim();
                    string uri = line.Substring(firstspace, lastspace - firstspace).Trim();

        //            Console.WriteLine("verb=\"" + ret.Verb + "\"");
      //              Console.WriteLine("uri=\"" + uri + "\"");

                    int firstquestion = uri.IndexOf('?');
                    if (firstquestion != -1)
                    {
                        ret.Path = uri.Substring(0, firstquestion);
                        ret.QueryString = uri.Substring(firstquestion + 1);
                    }
                    else
                    {
                        ret.Path = uri;
                    }

          //          Console.WriteLine("path=\"" + ret.Path + "\"");
            //        Console.WriteLine("qs=\"" + ret.QueryString + "\"");

                }
                else
                {
                    int firstcolon = line.IndexOf(':');
                    if (firstcolon != -1)
                    {
                        string key = line.Substring(0, firstcolon).Trim();
                        string val = line.Substring(firstcolon + 1).Trim();

                //        Console.WriteLine("key=\"" + key + "\", value=\"" + val + "\"");
                        if (!ret.Variables.ContainsKey(key))
                            ret.Variables.Add(key, val);
                    }
                }
            }

            return ret;
        }
    }
}
