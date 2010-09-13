using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.Types
{
    public interface IItem
    {
        string Icon { get; }
        string Text { get; }
        string Command { get; }
    }
}
