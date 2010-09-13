using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using Microsoft.DirectX.DirectSound;
using System.Collections;
using System.IO;

namespace a
{
	partial class Demo
	{
		Device sounddevice;
		SecondaryBuffer buffer;
		
		public void Run()
		{
			S_RNDR();
			// generate sound

			sounddevice = new Device();
			sounddevice.SetCooperativeLevel(Program.F1, CooperativeLevel.Normal);
		//	Console.WriteLine("sounddevice = " + sounddevice);

			WaveFormat wf = new WaveFormat();
			wf.FormatTag = WaveFormatTag.Pcm;
			wf.SamplesPerSecond = 44100;
			wf.BitsPerSample = 16;
			wf.Channels = 1;
			wf.BlockAlign = 2;// (short)(wf.Channels * wf.BitsPerSample / 8);
			wf.AverageBytesPerSecond = 88200;// 88200;// wf.SamplesPerSecond * wf.BlockAlign;

			BufferDescription bufferDesc = new BufferDescription(wf);
			bufferDesc.BufferBytes = S_B.Length;
			bufferDesc.GlobalFocus = true;
			bufferDesc.ControlEffects = true;

			buffer = new SecondaryBuffer(bufferDesc, sounddevice);
		/*
			EffectDescription[] effects = new EffectDescription[2];
			effects[0].GuidEffectClass = DSoundHelper.StandardEchoGuid;
		//	effects[].GuidEffectClass = DSoundHelper.StandardFlangerGuid;
			effects[1].GuidEffectClass = DSoundHelper.StandardCompressorGuid;
			buffer.SetEffects(effects);
			
			EchoEffect ee = buffer.GetEffects(0) as EchoEffect;
			if (ee != null)
			{
				EffectsEcho ep = ee.AllParameters;
				ep.Feedback = 76.0f;
				ep.WetDryMix = 10.0f;
				ep.LeftDelay = 60000.0f / BPM / 4.0f * 3.0f;
				ep.RightDelay = 60000.0f / BPM / 4.0f * 3.0f;
				ep.PanDelay = 0;
				ee.AllParameters = ep;
			}
			*/
			/*
			DistortionEffect de = buffer.GetEffects(0) as DistortionEffect;
			if (de != null)
			{
				EffectsDistortion ep = de.AllParameters;
				ep.PreLowpassCutoff = 8000.0f;
				ep.PostEqBandwidth = 4000.0f;
				ep.PostEqCenterFrequency = 4000.0f;
				ep.Edge = 0.0f;
				ep.Gain = 0.0f;
				de.AllParameters = ep;
			}*/

			buffer.Write(0, S_B, LockFlag.None);
			buffer.Play(0, BufferPlayFlags.Default);
		//	Console.WriteLine("buffer = " + buffer);

		//	Console.WriteLine("Running DemoThread...");
		}

		public void Stop()
		{
			Console.WriteLine("stop");

			if (buffer != null)
				buffer.Stop();
		}
	}
}
