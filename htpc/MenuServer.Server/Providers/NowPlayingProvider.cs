using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.Types;

namespace MenuServer.Server.Providers
{
    public class NowPlayingProvider : IPageProvider
    {
        public IPage GetPage(string path)
        {
            if (path.StartsWith("/nowplaying"))
            {
                BasePage page = new BasePage();
                page.Text = "Now playing";
                page.Text = "Currently playing tune";
                page.Actions.Add(new BaseItem("back", "Back", "leave"));
                return page;
            }
            return null;
        }
    }
}
