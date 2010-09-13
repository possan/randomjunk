using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Sanford.Multimedia.Midi;
using System.Threading;

namespace FulSeq1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        MidiThread sequencer;
        Thread thrd;

        private void Form1_Load(object sender, EventArgs e)
        {
            updateOutputs();
            cbOutputDevices.SelectedIndex = cbOutputDevices.Items.Count - 1;
            cbOutputEnabled.Checked = false;
            textBox1.Text = "36";
            trackBar1.Value = 120;
            timer1.Enabled = true;


            vScrollBar1.Minimum = 0;
            vScrollBar1.Maximum = 16;
            vScrollBar1.Value = 1;

            vScrollBar2.Minimum = 0;
            vScrollBar2.Maximum = 16;
            vScrollBar2.Value = 1;

            vScrollBar3.Minimum = 0;
            vScrollBar3.Maximum = 16;
            vScrollBar3.Value = 1;

            vScrollBar4.Minimum = 0;
            vScrollBar4.Maximum = 16;
            vScrollBar4.Value = 1;

            vScrollBar5.Minimum = 0;
            vScrollBar5.Maximum = 16;
            vScrollBar5.Value = 1;

            vScrollBar6.Minimum = 0;
            vScrollBar6.Maximum = 16;
            vScrollBar6.Value = 1;

            vScrollBar7.Minimum = 0;
            vScrollBar7.Maximum = 16;
            vScrollBar7.Value = 1;

            vScrollBar8.Minimum = 0;
            vScrollBar8.Maximum = 16;
            vScrollBar8.Value = 1;

            sequencer = new MidiThread();
            updateseq();
            sequencer.BPM = trackBar1.Value;
            sequencer.BuildTrack();
            thrd = new Thread(new ThreadStart(sequencer.Run));
            thrd.Start();
        }

        void kick(int dlta)
        {
            int realkey = 0;
            int.TryParse(textBox1.Text, out realkey);
            realkey += dlta;
            label1.Text = "key #" + realkey;

            // send c1
        }

        private void button1_Click(object sender, EventArgs e)
        {
            kick(0);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            kick(1);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            updateOutputs();
        }

        private void updateOutputs()
        {
            cbOutputDevices.Items.Clear();
            for (int i = 0; i < OutputDevice.DeviceCount; i++)
            {
                MidiOutCaps caps = OutputDevice.GetDeviceCapabilities(i);
                cbOutputDevices.Items.Add(caps.name);
            }
        }

        OutputDevice device = null;

        private void cbOutputEnabled_CheckedChanged(object sender, EventArgs e)
        {
            if (cbOutputEnabled.Checked)
            {
                if (sequencer.Device != null)
                {
                    sequencer.Device.Close();
                    sequencer.Device = null;
                }

                sequencer.Device = new OutputDevice(cbOutputDevices.SelectedIndex);
            }
            else
            {
                if (sequencer.Device != null)
                {
                    sequencer.Device.Close();
                    sequencer.Device = null;
                }
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (sequencer.Device != null)
            {
                sequencer.Device.Close();
                sequencer.Device = null;
            }
            thrd.Abort();

        }

        private void button7_Click(object sender, EventArgs e)
        {
            kick(2);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            kick(3);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            kick(4);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            kick(5);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            kick(7);
        }

        private void Form1_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            kick(6);
        }

        int tmp = 0;
        int tmp2 = -1;

        private void timer1_Tick(object sender, EventArgs e)
        {
            // 1ms
            tmp++;

            float bps = (float)(trackBar1.Value * 16.0f) / (float)60.0f;
            float ms = 1000.0f / bps;
            if (tmp > ms)
            {
                tmp = 0;
                tmp2++;
                if (tmp2 > 15)
                    tmp2 = 0;
                kick(tmp2);
            }
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            updateseq();
        }

        private void updateseq()
        {

            sequencer.BPM = trackBar1.Value;
            sequencer.Retrig[0] = vScrollBar1.Value;
            sequencer.Retrig[1] = vScrollBar2.Value;
            sequencer.Retrig[2] = vScrollBar3.Value;
            sequencer.Retrig[3] = vScrollBar4.Value;
            sequencer.Retrig[4] = vScrollBar5.Value;
            sequencer.Retrig[5] = vScrollBar6.Value;
            sequencer.Retrig[6] = vScrollBar7.Value;
            sequencer.Retrig[7] = vScrollBar8.Value;
            sequencer.BuildTrack();
        }

        private void vScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar2_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar3_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar4_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar5_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar6_Scroll(object sender, ScrollEventArgs e)
        {

            updateseq();
        }

        private void vScrollBar7_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }

        private void vScrollBar8_Scroll(object sender, ScrollEventArgs e)
        {
            updateseq();

        }
    }
}
