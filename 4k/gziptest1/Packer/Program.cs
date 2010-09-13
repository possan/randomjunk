using System;
using System.Collections.Generic;
using System.Text;
using System.IO.Compression;
using System.IO;

namespace Packer
{
	class Program
	{
		static void Main(string[] args)
		{
			FileStream f_in = File.Open("a.dll", FileMode.Open, FileAccess.Read, FileShare.ReadWrite);
			byte[] b_in = new byte[ f_in.Length ];
			f_in.Read( b_in, 0, b_in.Length );
			f_in.Close();

			Console.WriteLine("in: " + b_in.Length);

			byte[] b_out = new byte[1000000];
			MemoryStream m_out = new MemoryStream(b_out);
			DeflateStream g_out = new DeflateStream(m_out, CompressionMode.Compress, true);
			g_out.Write(b_in, 0, b_in.Length);
			g_out.Close();
//			g_out.Flush();

			// m_out.Position = 0;

			int b_len = (int)m_out.Position;

			Console.WriteLine("out: " + m_out.Position);
			Console.WriteLine("out: " + m_out.Length);
		//	byte[] b_out = m_out.GetBuffer();
	//		g_out.Close();

			FileStream f_out = File.Create("a.z", 1);
			f_out.Write(b_out, 0, b_len);
			f_out.Close();

			StreamWriter sw = File.CreateText("a.z.cs");
			sw.Write( "namespace a { partial class a { public static byte[] z = new byte[] /* "+b_len +" */ {\n" );
			for (int j = 0; j < b_len; j++)
			{
				if (j > 0)
					sw.Write(", ");
				sw.Write(b_out[j].ToString());
			}
			sw.Write("\n");
			sw.Write("}; } }\n");
			//	g_out.ReadByte();
			sw.Flush();
			sw.Close();

//			GZipStream gz = new GZipStream( ); 
		}
	}
}
