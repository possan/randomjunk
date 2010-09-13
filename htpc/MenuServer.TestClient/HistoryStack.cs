using System;
using System.Collections.Generic;
using System.Text;

namespace MenuServer.TestClient
{
    class HistoryStack
    {
        Stack<HistoryItem> _items;

        public HistoryStack()
        {
            _items = new Stack<HistoryItem>();
        }

        public HistoryItem Peek()
        {
            if (_items.Count > 0)
                return _items.Peek();
            
            return null;
        }

        public HistoryItem Pop()
        {
            if( _items.Count>0 )
                return _items.Pop();

            return null;
        }

        public void Push(HistoryItem item)
        {
            _items.Push(item);
        }
    }
}
