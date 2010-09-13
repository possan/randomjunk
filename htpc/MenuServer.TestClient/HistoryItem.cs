using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.TestClient.Data;
using System.Windows.Forms;

namespace MenuServer.TestClient
{
    class HistoryItem
    {
        public string Path;
        public string LastSelection;
        public Control ControlCache;
        public Page PageCache;
    }
}
