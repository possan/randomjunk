using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;

namespace a
{
	partial class Demo : Form
	{
		public Demo() : base()
		{
			Width = 800;
			Height = 600;
		R_IN();
	}
		protected override void OnCreateControl()
		{
			base.OnCreateControl();
		}

		protected override void OnShown(EventArgs e)
		{
			base.OnShown(e);
			Run();
		}

	}
}
