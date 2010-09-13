using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms; 

namespace MenuServer.PocketGui.Data
{
    public class HistoryItem
    {
        public string Path;
        public string LastSelection;
        public Control ControlCache;
        public Page PageCache;

        public HistoryItem()
        {
            Path = "";
            LastSelection = "";
            ControlCache = null;
            PageCache = null;
        }
    }
}
