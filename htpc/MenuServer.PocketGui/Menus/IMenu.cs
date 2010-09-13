using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using MenuServer.PocketGui.Data;

namespace MenuServer.PocketGui.Menus
{
    public interface IHost
    {
        int GetCurrentSelectionIndex();
        string GetCurrentSelectionValue();
        void RememberCurrentSelectionIndex(int sel);
        void RememberCurrentSelectionValue(string value);
        
        void Action(string command);
    }

    public interface IMenu
    {
        void Bind(Page page);
    }
}
