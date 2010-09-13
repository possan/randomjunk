using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace microsynthrandom1
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();
		}

		private void trackBar1_Scroll(object sender, EventArgs e)
		{
			generate();
		}

		private void trackBar2_Scroll(object sender, EventArgs e)
		{
			generate();
		}

		private void trackBar3_Scroll(object sender, EventArgs e)
		{
			generate();
		}

		void generate()
		{
			listBox1.Items.Clear();

			barvalue.Text = barslider.Value.ToString();
			adjustvalue.Text = adjustslider.Value.ToString();
			randomvalue.Text = randomslider.Value.ToString();

			Random r = new Random(randomslider.Value);
		
			for (int b = 0; b < barslider.Value; b++)
			{
				for (int j = 0; j < 16; j++)
				{
					r.Next();
				}
			}

			for (int j = 0; j < 16; j++)
			{
				int basevalue = (r.Next() % 100) - adjustslider.Value;

				if (j == 0) stepContrl1.RandomValue = basevalue;
				if (j == 1) stepContrl2.RandomValue = basevalue;
				if (j == 2) stepContrl3.RandomValue = basevalue;
				if (j == 3) stepContrl4.RandomValue = basevalue;
				if (j == 4) stepContrl5.RandomValue = basevalue;
				if (j == 5) stepContrl6.RandomValue = basevalue;
				if (j == 6) stepContrl7.RandomValue = basevalue;
				if (j == 7) stepContrl8.RandomValue = basevalue;
				if (j == 8) stepContrl9.RandomValue = basevalue;
				if (j == 9) stepContrl10.RandomValue = basevalue;
				if (j == 10) stepContrl11.RandomValue = basevalue;
				if (j == 11) stepContrl12.RandomValue = basevalue;
				if (j == 12) stepContrl13.RandomValue = basevalue;
				if (j == 13) stepContrl14.RandomValue = basevalue;
				if (j == 14) stepContrl15.RandomValue = basevalue;
				if (j == 15) stepContrl16.RandomValue = basevalue;

				listBox1.Items.Add(basevalue);
			}
		}

		private void Form1_Load(object sender, EventArgs e)
		{
			randomslider.Minimum = 0;
			randomslider.Maximum = 300;
			randomslider.Value = 123;

			barslider.Minimum = 0;
			barslider.Maximum = 100;
			barslider.Value = 0;

			adjustslider.Minimum = -60;
			adjustslider.Maximum = 60;
			adjustslider.Value = 0;

			generate();
		}

		private void stepContrl8_Load(object sender, EventArgs e)
		{

		}
	}

}