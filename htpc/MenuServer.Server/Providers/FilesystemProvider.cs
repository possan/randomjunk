using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.Types;
using System.IO;

namespace MenuServer.Server.Providers
{
    public class FilesystemProvider : IPageProvider
    {
        public IPage GetPage(string path)
        {

            if (path.StartsWith("/fs-file/"))
            {
                string localpath = path.Substring(8);

                BasePage page = new BasePage();

                page.Title = "File";
                page.Text = "Menu for file: " + localpath;
                /*
                // if (localpath == "")
                {
                    string basepath = "c:\\temp\\";
                    string fullpath = basepath + localpath;


                    string[] dirs = Directory.GetDirectories(fullpath);
                    for (int j = 0; j < dirs.Length; j++)
                    {
                        string lp = dirs[j].Substring(basepath.Length);
                        string fn = Path.GetFileName(dirs[j]);
                        page.Items.Add(new BaseItem("folder", fn + "/", "enter:/fs-browse/" + lp));
                    }

                    string[] files = Directory.GetFiles(fullpath);
                    for (int j = 0; j < dirs.Length; j++)
                    {
                        string fp = dirs[j];
                        page.Items.Add(new BaseItem("file", fn + "/", "enter:/fs-file/" + fp));
                    }

                    page.Items.Add(new BaseItem("file", "temp", "enter:/files/c:\\temp"));
                }

                */

                page.Actions.Add(new BaseItem("", "Launch", "leave"));
                page.Actions.Add(new BaseItem("", "Unpack and play", "leave"));
                page.Actions.Add(new BaseItem("back", "Back", "leave"));

                return page;
            }

            if (path.StartsWith("/fs-browse/"))
            {
                string localpath = path.Substring(10);

                BasePage page = new BasePage();

                page.Title = "Browse";
                page.Text = "Path: " + localpath;

                // if (localpath == "")
                {
                    string basepath = "c:\\temp";
                    string fullpath = basepath + localpath.Replace("/", "\\");


                    string[] dirs = Directory.GetDirectories(fullpath);
                    for (int j = 0; j < dirs.Length; j++)
                    {
                        string lp = dirs[j].Substring(basepath.Length + 1).Replace("\\", "/");
                        string fn = Path.GetFileName(dirs[j]);
                        page.Items.Add(new BaseItem("folder", fn + "/", "enter:/fs-browse/" + lp));
                    }

                    string[] files = Directory.GetFiles(fullpath);
                    for (int j = 0; j < files.Length; j++)
                    {
                        string fp = files[j].Substring(basepath.Length + 1).Replace("\\", "/");
                        string fn = Path.GetFileName(files[j]);
                        page.Items.Add(new BaseItem("file", fn, "enter:/fs-file/" + fp));
                    }

                }


                page.Actions.Add(new BaseItem("back", "Back", "leave"));

                return page;
            }
            return null;

        }
    }
}
