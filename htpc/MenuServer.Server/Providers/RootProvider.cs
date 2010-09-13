using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.Types;

namespace MenuServer.Server.Providers
{
    public class RootProvider : IPageProvider
    {
        public IPage GetPage(string path)
        {
            if (path == "/")
            {
                BasePage page = new BasePage();

                page.Title = "Main menu";
                page.Items.Add(new BaseItem("Music", "enter:/music"));
                page.Items.Add(new BaseItem("Videos", "enter:/videos"));
                page.Items.Add(new BaseItem("Pictures", "enter:/pictures"));
                page.Items.Add(new BaseItem("Filemanager", "enter:/fs-browse/"));
                page.Actions.Add(new BaseItem("Now playing", "enter:/nowplaying"));
                page.Actions.Add(new BaseItem("Toggle desktop", "call:/desktop/toggle"));
            
                return page;
            }
            return null;
        }
    }
}
