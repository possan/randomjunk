using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace a
{
	class Program
	{
		public static Demo F1;
		
		static void Main(string[] args)
		{
			F1 = new Demo();
			F1.Show();// Application.Run(F1);
			while (F1.Created)
			{
				F1.R_FR();
				Application.DoEvents();
			}
		}


	}
}
