using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Types
{
    /// <summary>
    /// A page
    /// </summary>
    public interface IPage
    {
        /// <summary>
        /// URL of page thumbnail/icon
        /// </summary>
        string Icon { get; }
        
        /// <summary>
        /// Page title
        /// </summary>
        string Title { get; }

        /// <summary>
        /// Page text, used for notifications etc
        /// </summary>
        string Text { get; }

        /// <summary>
        /// Rendermode
        /// "menu", "list", "prompt", "notification", "images", "coverflow"
        /// </summary>
        string RenderMode { get; }

        /// <summary>
        /// Menu actions, rendered as buttons, keep minimal
        /// </summary>
        List<IItem> Actions { get; }

        /// <summary>
        /// Menu items, if subnavigation
        /// </summary>
        List<IItem> Items { get; }
    }
}
