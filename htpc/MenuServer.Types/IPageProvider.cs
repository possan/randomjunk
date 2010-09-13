using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Types
{
    /// <summary>
    /// A provider of pages in the menusystem
    /// </summary>
    public interface IPageProvider
    {
        /// <summary>
        /// Returns the page for the provided path, if it works with this provider, otherwise null
        /// </summary>
        /// <param name="path">Requested path</param>
        /// <returns>Page for path, or null</returns>
        IPage GetPage(string path);
    }
}
