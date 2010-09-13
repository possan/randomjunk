using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Windows.Forms;

namespace microsynthrandom1
{
	public partial class StepContrl : UserControl
	{
		public StepContrl()
		{
			InitializeComponent();
		}

		private int _step;
		public int Step
		{
			get
			{
				return _step;
			}
			set
			{
				_step = value;
				Refresh();
			}
		}

		private int _chan;
		public int Chance
		{
			get
			{
				return _chan;
			}
			set
			{
				_chan = value;
				Refresh();
			}
		}

		private int _adj;
		public int Adjust
		{
			get
			{
				return _adj;
			}
			set
			{
				_adj = value;
				Refresh();
			}
		}

		private int _rv;
		public int RandomValue
		{
			get
			{
				return _rv;
			}
			set
			{
				_rv = value;
				Refresh();
			}
		}

		private void trackBar1_Scroll(object sender, EventArgs e)
		{
			Chance = trackBar1.Value;
			Update();
		}

		private void StepContrl_Load(object sender, EventArgs e)
		{
			trackBar1.Minimum = 0;
			trackBar1.Maximum = 100;
			trackBar1.Value = 50;
			Chance = 50;
			Update();
		}

		public override void Refresh()
		{
			label1.Text = Step.ToString();

			textBox1.Text = Chance.ToString();

			int power = Math.Max(Math.Min(100, RandomValue), 0);
			textBox2.Text = power.ToString();

			if (power <= Chance)
			{
				textBox2.BackColor = Color.FromArgb(0, power*2, 0);
				textBox2.ForeColor = Color.White;
			}
			else
			{
				textBox2.BackColor = Color.FromArgb(0, 0, 0);
				textBox2.ForeColor = Color.White;
			}
			base.Refresh();
		}
	}
}
