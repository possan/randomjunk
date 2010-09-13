namespace microsynthrandom1
{
	partial class Form1
	{
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.IContainer components = null;

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing && (components != null))
			{
				components.Dispose();
			}
			base.Dispose(disposing);
		}

		#region Windows Form Designer generated code

		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.randomslider = new System.Windows.Forms.TrackBar();
			this.barslider = new System.Windows.Forms.TrackBar();
			this.label1 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.listBox1 = new System.Windows.Forms.ListBox();
			this.adjustslider = new System.Windows.Forms.TrackBar();
			this.label3 = new System.Windows.Forms.Label();
			this.adjustvalue = new System.Windows.Forms.Label();
			this.barvalue = new System.Windows.Forms.Label();
			this.randomvalue = new System.Windows.Forms.Label();
			this.stepContrl1 = new microsynthrandom1.StepContrl();
			this.stepContrl2 = new microsynthrandom1.StepContrl();
			this.stepContrl3 = new microsynthrandom1.StepContrl();
			this.stepContrl4 = new microsynthrandom1.StepContrl();
			this.stepContrl5 = new microsynthrandom1.StepContrl();
			this.stepContrl6 = new microsynthrandom1.StepContrl();
			this.stepContrl7 = new microsynthrandom1.StepContrl();
			this.stepContrl8 = new microsynthrandom1.StepContrl();
			this.stepContrl9 = new microsynthrandom1.StepContrl();
			this.stepContrl10 = new microsynthrandom1.StepContrl();
			this.stepContrl11 = new microsynthrandom1.StepContrl();
			this.stepContrl12 = new microsynthrandom1.StepContrl();
			this.stepContrl13 = new microsynthrandom1.StepContrl();
			this.stepContrl14 = new microsynthrandom1.StepContrl();
			this.stepContrl15 = new microsynthrandom1.StepContrl();
			this.stepContrl16 = new microsynthrandom1.StepContrl();
			((System.ComponentModel.ISupportInitialize)(this.randomslider)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.barslider)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.adjustslider)).BeginInit();
			this.SuspendLayout();
			// 
			// randomslider
			// 
			this.randomslider.Location = new System.Drawing.Point(6, 28);
			this.randomslider.Maximum = 100;
			this.randomslider.Name = "randomslider";
			this.randomslider.Size = new System.Drawing.Size(368, 45);
			this.randomslider.TabIndex = 0;
			this.randomslider.Scroll += new System.EventHandler(this.trackBar1_Scroll);
			// 
			// barslider
			// 
			this.barslider.Location = new System.Drawing.Point(6, 95);
			this.barslider.Maximum = 100;
			this.barslider.Name = "barslider";
			this.barslider.Size = new System.Drawing.Size(368, 45);
			this.barslider.TabIndex = 0;
			this.barslider.Scroll += new System.EventHandler(this.trackBar2_Scroll);
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(12, 12);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(70, 13);
			this.label1.TabIndex = 1;
			this.label1.Text = "Randomseed";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(12, 79);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(26, 13);
			this.label2.TabIndex = 2;
			this.label2.Text = "Bar:";
			// 
			// listBox1
			// 
			this.listBox1.FormattingEnabled = true;
			this.listBox1.Location = new System.Drawing.Point(494, 28);
			this.listBox1.Name = "listBox1";
			this.listBox1.Size = new System.Drawing.Size(165, 199);
			this.listBox1.TabIndex = 3;
			// 
			// adjustslider
			// 
			this.adjustslider.Location = new System.Drawing.Point(6, 167);
			this.adjustslider.Maximum = 100;
			this.adjustslider.Name = "adjustslider";
			this.adjustslider.Size = new System.Drawing.Size(368, 45);
			this.adjustslider.TabIndex = 0;
			this.adjustslider.Scroll += new System.EventHandler(this.trackBar3_Scroll);
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(12, 151);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(39, 13);
			this.label3.TabIndex = 2;
			this.label3.Text = "Adjust:";
			// 
			// adjustvalue
			// 
			this.adjustvalue.AutoSize = true;
			this.adjustvalue.Location = new System.Drawing.Point(96, 151);
			this.adjustvalue.Name = "adjustvalue";
			this.adjustvalue.Size = new System.Drawing.Size(26, 13);
			this.adjustvalue.TabIndex = 2;
			this.adjustvalue.Text = "Bar:";
			// 
			// barvalue
			// 
			this.barvalue.AutoSize = true;
			this.barvalue.Location = new System.Drawing.Point(96, 79);
			this.barvalue.Name = "barvalue";
			this.barvalue.Size = new System.Drawing.Size(26, 13);
			this.barvalue.TabIndex = 2;
			this.barvalue.Text = "Bar:";
			// 
			// randomvalue
			// 
			this.randomvalue.AutoSize = true;
			this.randomvalue.Location = new System.Drawing.Point(96, 12);
			this.randomvalue.Name = "randomvalue";
			this.randomvalue.Size = new System.Drawing.Size(26, 13);
			this.randomvalue.TabIndex = 2;
			this.randomvalue.Text = "Bar:";
			// 
			// stepContrl1
			// 
			this.stepContrl1.Adjust = 0;
			this.stepContrl1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl1.Chance = 0;
			this.stepContrl1.Location = new System.Drawing.Point(15, 277);
			this.stepContrl1.Name = "stepContrl1";
			this.stepContrl1.RandomValue = 0;
			this.stepContrl1.Size = new System.Drawing.Size(45, 209);
			this.stepContrl1.Step = 1;
			this.stepContrl1.TabIndex = 4;
			// 
			// stepContrl2
			// 
			this.stepContrl2.Adjust = 0;
			this.stepContrl2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl2.Chance = 0;
			this.stepContrl2.Location = new System.Drawing.Point(66, 277);
			this.stepContrl2.Name = "stepContrl2";
			this.stepContrl2.RandomValue = 0;
			this.stepContrl2.Size = new System.Drawing.Size(45, 209);
			this.stepContrl2.Step = 2;
			this.stepContrl2.TabIndex = 4;
			// 
			// stepContrl3
			// 
			this.stepContrl3.Adjust = 0;
			this.stepContrl3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl3.Chance = 0;
			this.stepContrl3.Location = new System.Drawing.Point(117, 277);
			this.stepContrl3.Name = "stepContrl3";
			this.stepContrl3.RandomValue = 0;
			this.stepContrl3.Size = new System.Drawing.Size(45, 209);
			this.stepContrl3.Step = 3;
			this.stepContrl3.TabIndex = 4;
			// 
			// stepContrl4
			// 
			this.stepContrl4.Adjust = 0;
			this.stepContrl4.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl4.Chance = 0;
			this.stepContrl4.Location = new System.Drawing.Point(168, 277);
			this.stepContrl4.Name = "stepContrl4";
			this.stepContrl4.RandomValue = 0;
			this.stepContrl4.Size = new System.Drawing.Size(45, 209);
			this.stepContrl4.Step = 4;
			this.stepContrl4.TabIndex = 4;
			// 
			// stepContrl5
			// 
			this.stepContrl5.Adjust = 0;
			this.stepContrl5.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl5.Chance = 0;
			this.stepContrl5.Location = new System.Drawing.Point(219, 277);
			this.stepContrl5.Name = "stepContrl5";
			this.stepContrl5.RandomValue = 0;
			this.stepContrl5.Size = new System.Drawing.Size(45, 209);
			this.stepContrl5.Step = 5;
			this.stepContrl5.TabIndex = 4;
			// 
			// stepContrl6
			// 
			this.stepContrl6.Adjust = 0;
			this.stepContrl6.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl6.Chance = 0;
			this.stepContrl6.Location = new System.Drawing.Point(270, 277);
			this.stepContrl6.Name = "stepContrl6";
			this.stepContrl6.RandomValue = 0;
			this.stepContrl6.Size = new System.Drawing.Size(45, 209);
			this.stepContrl6.Step = 6;
			this.stepContrl6.TabIndex = 4;
			// 
			// stepContrl7
			// 
			this.stepContrl7.Adjust = 0;
			this.stepContrl7.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl7.Chance = 0;
			this.stepContrl7.Location = new System.Drawing.Point(321, 277);
			this.stepContrl7.Name = "stepContrl7";
			this.stepContrl7.RandomValue = 0;
			this.stepContrl7.Size = new System.Drawing.Size(45, 209);
			this.stepContrl7.Step = 7;
			this.stepContrl7.TabIndex = 4;
			// 
			// stepContrl8
			// 
			this.stepContrl8.Adjust = 0;
			this.stepContrl8.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl8.Chance = 0;
			this.stepContrl8.Location = new System.Drawing.Point(372, 277);
			this.stepContrl8.Name = "stepContrl8";
			this.stepContrl8.RandomValue = 0;
			this.stepContrl8.Size = new System.Drawing.Size(45, 209);
			this.stepContrl8.Step = 8;
			this.stepContrl8.TabIndex = 4;
			this.stepContrl8.Load += new System.EventHandler(this.stepContrl8_Load);
			// 
			// stepContrl9
			// 
			this.stepContrl9.Adjust = 0;
			this.stepContrl9.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl9.Chance = 0;
			this.stepContrl9.Location = new System.Drawing.Point(423, 277);
			this.stepContrl9.Name = "stepContrl9";
			this.stepContrl9.RandomValue = 0;
			this.stepContrl9.Size = new System.Drawing.Size(45, 209);
			this.stepContrl9.Step = 9;
			this.stepContrl9.TabIndex = 4;
			// 
			// stepContrl10
			// 
			this.stepContrl10.Adjust = 0;
			this.stepContrl10.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl10.Chance = 0;
			this.stepContrl10.Location = new System.Drawing.Point(474, 277);
			this.stepContrl10.Name = "stepContrl10";
			this.stepContrl10.RandomValue = 0;
			this.stepContrl10.Size = new System.Drawing.Size(45, 209);
			this.stepContrl10.Step = 10;
			this.stepContrl10.TabIndex = 4;
			// 
			// stepContrl11
			// 
			this.stepContrl11.Adjust = 0;
			this.stepContrl11.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl11.Chance = 0;
			this.stepContrl11.Location = new System.Drawing.Point(525, 277);
			this.stepContrl11.Name = "stepContrl11";
			this.stepContrl11.RandomValue = 0;
			this.stepContrl11.Size = new System.Drawing.Size(45, 209);
			this.stepContrl11.Step = 11;
			this.stepContrl11.TabIndex = 4;
			// 
			// stepContrl12
			// 
			this.stepContrl12.Adjust = 0;
			this.stepContrl12.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl12.Chance = 0;
			this.stepContrl12.Location = new System.Drawing.Point(576, 277);
			this.stepContrl12.Name = "stepContrl12";
			this.stepContrl12.RandomValue = 0;
			this.stepContrl12.Size = new System.Drawing.Size(45, 209);
			this.stepContrl12.Step = 12;
			this.stepContrl12.TabIndex = 4;
			// 
			// stepContrl13
			// 
			this.stepContrl13.Adjust = 0;
			this.stepContrl13.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl13.Chance = 0;
			this.stepContrl13.Location = new System.Drawing.Point(627, 277);
			this.stepContrl13.Name = "stepContrl13";
			this.stepContrl13.RandomValue = 0;
			this.stepContrl13.Size = new System.Drawing.Size(45, 209);
			this.stepContrl13.Step = 13;
			this.stepContrl13.TabIndex = 4;
			// 
			// stepContrl14
			// 
			this.stepContrl14.Adjust = 0;
			this.stepContrl14.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl14.Chance = 0;
			this.stepContrl14.Location = new System.Drawing.Point(678, 277);
			this.stepContrl14.Name = "stepContrl14";
			this.stepContrl14.RandomValue = 0;
			this.stepContrl14.Size = new System.Drawing.Size(45, 209);
			this.stepContrl14.Step = 14;
			this.stepContrl14.TabIndex = 4;
			// 
			// stepContrl15
			// 
			this.stepContrl15.Adjust = 0;
			this.stepContrl15.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl15.Chance = 0;
			this.stepContrl15.Location = new System.Drawing.Point(729, 277);
			this.stepContrl15.Name = "stepContrl15";
			this.stepContrl15.RandomValue = 0;
			this.stepContrl15.Size = new System.Drawing.Size(45, 209);
			this.stepContrl15.Step = 15;
			this.stepContrl15.TabIndex = 4;
			// 
			// stepContrl16
			// 
			this.stepContrl16.Adjust = 0;
			this.stepContrl16.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
			this.stepContrl16.Chance = 0;
			this.stepContrl16.Location = new System.Drawing.Point(780, 277);
			this.stepContrl16.Name = "stepContrl16";
			this.stepContrl16.RandomValue = 0;
			this.stepContrl16.Size = new System.Drawing.Size(45, 209);
			this.stepContrl16.Step = 16;
			this.stepContrl16.TabIndex = 4;
			// 
			// Form1
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(963, 553);
			this.Controls.Add(this.stepContrl16);
			this.Controls.Add(this.stepContrl15);
			this.Controls.Add(this.stepContrl14);
			this.Controls.Add(this.stepContrl13);
			this.Controls.Add(this.stepContrl12);
			this.Controls.Add(this.stepContrl11);
			this.Controls.Add(this.stepContrl10);
			this.Controls.Add(this.stepContrl9);
			this.Controls.Add(this.stepContrl8);
			this.Controls.Add(this.stepContrl7);
			this.Controls.Add(this.stepContrl6);
			this.Controls.Add(this.stepContrl5);
			this.Controls.Add(this.stepContrl4);
			this.Controls.Add(this.stepContrl3);
			this.Controls.Add(this.stepContrl2);
			this.Controls.Add(this.stepContrl1);
			this.Controls.Add(this.listBox1);
			this.Controls.Add(this.randomvalue);
			this.Controls.Add(this.adjustvalue);
			this.Controls.Add(this.label3);
			this.Controls.Add(this.barvalue);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.adjustslider);
			this.Controls.Add(this.barslider);
			this.Controls.Add(this.randomslider);
			this.Name = "Form1";
			this.Text = "Form1";
			this.Load += new System.EventHandler(this.Form1_Load);
			((System.ComponentModel.ISupportInitialize)(this.randomslider)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.barslider)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.adjustslider)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.TrackBar randomslider;
		private System.Windows.Forms.TrackBar barslider;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.ListBox listBox1;
		private System.Windows.Forms.TrackBar adjustslider;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label adjustvalue;
		private System.Windows.Forms.Label barvalue;
		private System.Windows.Forms.Label randomvalue;
		private StepContrl stepContrl1;
		private StepContrl stepContrl2;
		private StepContrl stepContrl3;
		private StepContrl stepContrl4;
		private StepContrl stepContrl5;
		private StepContrl stepContrl6;
		private StepContrl stepContrl7;
		private StepContrl stepContrl8;
		private StepContrl stepContrl9;
		private StepContrl stepContrl10;
		private StepContrl stepContrl11;
		private StepContrl stepContrl12;
		private StepContrl stepContrl13;
		private StepContrl stepContrl14;
		private StepContrl stepContrl15;
		private StepContrl stepContrl16;
	}
}

