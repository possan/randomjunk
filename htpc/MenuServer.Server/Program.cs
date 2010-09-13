using System;
using System.Collections.Generic;
using System.Text;
using MenuServer.Types;
using MenuServer.Server.Providers;

namespace MenuServer.Server
{
    public class Program
    {
        static void RenderPage(IPage page)
        {
            //          string xml = Utilities.BuildPage(page);
            //            Console.WriteLine(xml);

            Console.WriteLine("title: " + page.Title);
            Console.WriteLine("text: " + page.Text);
            Console.WriteLine("icon: " + page.Icon);
            Console.WriteLine("rendermode: " + page.RenderMode);
            Console.WriteLine("items:");
            for (int j = 0; j < page.Items.Count; j++)
                Console.WriteLine("  #" + j + ": " + page.Items[j].Text + " -> " + page.Items[j].Command);
            Console.WriteLine("actions:");
            for (int j = 0; j < page.Actions.Count; j++)
                Console.WriteLine("  #" + j + ": " + page.Actions[j].Text + " -> " + page.Actions[j].Command);
            Console.WriteLine();
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Menu Server");

            ProviderManager.Init();

            ProviderManager.Register(new FilesystemProvider());
            ProviderManager.Register(new RootProvider());
            ProviderManager.Register(new NowPlayingProvider());

            Web.Server server = new Web.Server();
            server.Port = 8001;
            server.Host = "192.168.0.100";///84.55.98.18";
            server.Start();

            bool alive = true;
            while (alive)
            {
                Console.Write("Get path (or exit): ");
                string path = Console.ReadLine();

                if (path == "exit")
                {
                    alive = false;
                }
                else if (path != "")
                {
                    IPage page = ProviderManager.GetPage(path);
                    if (page != null)
                    {
                        RenderPage(page);
                    }
                    else
                    {
                        Console.WriteLine("Path not found");
                    }
                }
            }

            Console.WriteLine("Quitting..");
            
            server.Stop();


            Console.WriteLine("Done.");
        }
    }
}
