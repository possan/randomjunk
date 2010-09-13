using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.DirectX.DirectSound;
using Microsoft.DirectX.AudioVideoPlayback;
using System.Windows.Forms;
using System.Collections;

namespace a
{
	partial class Demo
	{
		public float[] S_F;
		public byte[] S_B;

		public void FP(int startsample, int numsamples,
			float startpitch, float pitchmult,
			float startvol, float volmult)
		{
			float ph = 0.0f;
			float sp = startpitch;
			float vo = startvol;
			for (int j = 0; j < numsamples; j++)
			{
				if (vo > 0.0f)
				{
					float f = vo * (float)Math.Sin(ph * 3.142 / 44100.0f);
					S_F[startsample + j] += f;
					ph += sp;
					sp *= pitchmult;
					vo *= volmult;
				}
			}

		}

		public void FN(int startsample, int numsamples, int dirt,
			float startvol, float volmult)
		{
			float vo = startvol;

			float fsamp = 0.0f;
			Random r = new Random();
			int resample = 0;
			for (int j = 0; j < numsamples; j++)
			{
				if (vo > 0.0f)
				{
					if (resample == 0)
					{
						fsamp = (((float)r.NextDouble() * 2.0f) - 1.0f);
						resample = dirt;
					}
					resample--;

					float f = vo * fsamp;
					S_F[startsample + j] += f;
					vo *= volmult;
				}
			}
		}


		public void FSQ(int startsample, int numsamples, float startpitch,
			float startvol, float volmult)
		{
			float vo = startvol;
			int phase = 0;
			int step = (int)(8192.0f * startpitch / 44100.0f);// / 44100.0f; 

			for (int j = 0; j < numsamples; j++)
			{
				if (vo > 0.0f)
				{
					float f = vo;
					if (phase < 32768)
						f = -vo;

					S_F[startsample + j] += f;

					vo *= volmult;

					phase += step;
					if (phase >= 65536)
						phase -= 65536;
				}
			}
		}

		public void FSA(int startsample, int numsamples, float startpitch,
			float startvol, float volmult)
		{
			float vo = startvol;


			int phase = 0;
			int step = (int)(65536.0f * startpitch / 44100.0f);// / 44100.0f; 

			for (int j = 0; j < numsamples; j++)
			{
				if (vo > 0.0f)
				{
					float f = (((float)phase / 32768.0f) - 1.0f) * vo;

					S_F[startsample + j] += f;

					vo *= volmult;

					phase += step;
					if (phase >= 65536)
						phase -= 65536;
				}
			}
		}

		// RIM!
		// FallingPitchVol(startsample, 4000, 900, 0.999999f, 1.0f, 0.999f);

		public void S_BD(int startsample)
		{
			FP(startsample, 3000, 1000, 0.999f, 0.9f, 0.99999f);
			FP(startsample, 5000, 2000, 0.99f, 0.66f, 0.99999f);
			FP(startsample, 20000, 110, 0.99999999f, 1.0f, 0.999999f);
			//		FP(startsample, 7000, 1000, 0.999f, 1.0f, 0.999f);
			//		FP(startsample, 10000, 100, 1.0f, 1.0f, 0.9998f);//0.999f);
		}

		public void S_SD(int startsample)
		{
			FN(startsample, 2000, 2, 0.8f, 0.999f);
 			FN(startsample, 1600, 3, 0.5f, 0.999f);
		}

		public void S_CH(int startsample)
		{
			FN(startsample, 3200, 1, 0.6f, 0.994f);
//			FN(startsample, 300, 1, 0.1f, 0.999f);

		}

		public void S_OH(int startsample)
		{
			FN(startsample, 7000, 2, 0.4f, 0.999f);
//			FN(startsample, 4000, 2, 0.1f, 0.999f);
		}

		public void S_RS(int startsample, int bp)
		{
			//	FP(startsample, 15000, bp, 1.0f, 1.0f, 0.9997f);
			//	FP(startsample, 10000, bp / 2, 1.0f, 1.0f, 0.9997f);
			FSA(startsample, 15000, bp, 0.5f, 0.9995f);
			FSA(startsample, 15000, bp * 2 / 3, 0.5f, 0.9992f);
			FSA(startsample, 15000, bp / 3, 0.5f, 0.9992f);
		}

		public const int BPM = 130;

		public void S_RNDR()
		{
			int len = 44100 * 60;
			S_F = new float[len];

			int bars = 8;

			int samplesperbeat = 44100 * 60 / BPM;

			//			int[] basschance = new int[] { 100, 5, 5, 35, /**/ 5, 5, 55, 5,/**/  5, 5, 45, 65, /**/ 5, 5, 20, 35 };
			int[] basschance = new int[] { 100, 15, 5, 35, /**/ 105, 5, 30, 5,/**/  105, 5, 15, 5, /**/ 105, 15, 25, 45 };
			// int[] basschance = new int[] { 100, 5, 5, 5, /**/ 105, 5, 5, 5,/**/  105, 5, 5, 5, /**/ 95, 5, 5, 5 };
			int[] snarechance = new int[] { 5, 5, 5, 45, /**/ 100, 5, 5, 50, /**/ 5, 35, 5, 5, /**/ 100, 5, 5, 55 };
			int[] closedhatchance = new int[] { 0, 75, 75, 35, /**/ 0, 85, 85, 0, /**/ 5, 75, 75, 5, /**/ 5, 85, 95, 55 };
			int[] openchance = new int[] { 5, 5, 80, 5, /**/ 5, 5, 85, 0, /**/ 5, 5, 75, 5, /**/ 5, 45, 85, 45 };
			int[] rimchance = new int[] { 95, 85, 85, 55, /**/ 85, 55, 95, 70, /**/ 95, 55, 85, 75, /**/ 95, 35, 75, 75 };

			Random r = new Random(12345);
			for (int ba = 0; ba < bars; ba++)
			{
				int[] bfreqs = new int[] { 300, 200, 300, 266, 300, 200, 300, 420 };
				int bfreq = bfreqs[ba%8];
				for (int be = 0; be < 16; be++)
				{
					int abeat = (ba * 16) + be;
					int asamp = abeat * samplesperbeat / 4;
					int chance = 0;

					// shuffle
					if (be % 2 == 1)
						asamp += samplesperbeat / 20;

					chance = r.Next() % 100;
					if (chance <= basschance[be])
						S_BD(asamp);

					chance = r.Next() % 100;
					if (chance <= snarechance[be])
						S_SD(asamp);

					chance = r.Next() % 100;
					if (chance <= closedhatchance[be])
						S_CH(asamp);

					chance = r.Next() % 100;
					if (chance <= openchance[be])
						S_OH(asamp);

					chance = r.Next() % 100;
					if (be % 4 == 0)
						S_RS(asamp, bfreq);
					if (be % 4 == 1)
						S_RS(asamp, bfreq >> 1);
					if (be % 4 == 2)
						S_RS(asamp, bfreq << 1);
					if (be % 4 == 3)
						S_RS(asamp, bfreq << 1);

					chance = r.Next() % 100;
					chance = r.Next() % 100;
					chance = r.Next() % 100;
				}
			}

			S_B = new byte[len * 2];
			for (int j = 0; j < len; j++)
			{
				float f = S_F[j] * 10000.0f;
				//200.0f) + 32768.0f;

				// f = 33000.0f * (float)Math.Sin((float)j * 440.0 / 44100.0 );

				// f += 32768.0f;

				if (f <= -32767.0f)
					f = -32767.0f;
				if (f >= 32767.0f)
					f = 32767.0f;

				short s = (short)f;
				S_B[j * 2 + 0] = (byte)(s & 255);
				S_B[j * 2 + 1] = (byte)(s >> 8);
			}
		}
	}
}
