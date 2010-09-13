using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.Types;

namespace MenuServer.Server
{
    public class ProviderManager
    {
        static List<IPageProvider> providers;

        public static void Init()
        {
            providers = new List<IPageProvider>();
        }

        public static void Register(IPageProvider provider)
        {
            providers.Add(provider);
        }

        public static IPage GetPage(string path)
        {
            IPage ret = null;
            for (int j = 0; j < providers.Count && ret == null; j++)
            {
                Console.WriteLine("> trying provider #" + j);
                IPage tmp = providers[j].GetPage(path);
                if (tmp != null)
                {
                    Console.WriteLine("> returned a page: " + tmp.Title);
                    ret = tmp;
                }
            }
            return ret;
        }
    }
}
