using System;
using System.Collections.Generic;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using Microsoft.DirectX;
using Microsoft.DirectX.Direct3D;
using Direct3D = Microsoft.DirectX.Direct3D;

namespace a
{
	partial class Demo : Form
	{
		Device dev2 = null;
		VertexBuffer vb = null;
		Effect eff = null;

		const int vsteps = 10;
		const int usteps = 10;

		public void pt(ref CustomVertex.PositionNormal ret, int u, int v)
		{
			ret.X = 1.0f * (float)Math.Sin((float)u * Math.PI / (float)usteps);
			ret.Y = 1.0f * (float)Math.Cos((float)u * Math.PI / (float)usteps);
			ret.Z = 2.0f * ((float)v / (float)vsteps) - 1.0f;// (float)Math.Cos((float)v * Math.PI / (float)vsteps);

			ret.Nx = ret.X;
			ret.Ny = ret.Y;
			ret.Nz = ret.Z;
		}

		public void R_IN()
		{


			PresentParameters presentParams = new PresentParameters();
			presentParams.Windowed = true; // We don't want to run fullscreen
			presentParams.SwapEffect = SwapEffect.Discard; // Discard the frames 
			presentParams.EnableAutoDepthStencil = true; // Turn on a Depth stencil
			presentParams.AutoDepthStencilFormat = DepthFormat.D16; // And the stencil format
			presentParams.BackBufferCount = 1;
			presentParams.BackBufferFormat = Format.X8R8G8B8;
			presentParams.BackBufferHeight = 600;
			presentParams.BackBufferWidth = 800;

			dev2 = new Device(0, DeviceType.Hardware, this, CreateFlags.SoftwareVertexProcessing, presentParams); //Create a device
			dev2.CheckCooperativeLevel();
			//		dev2.DeviceReset += new System.EventHandler(this.OnResetDevice);


			float[] pts = new float[]
			{ 
				-1,-1,-1,
				-1,-1,1,
				-1,1,-1,
				-1,1,1,

				1,-1,-1,
				1,-1,1,
				1,1,-1,
				1,1,1
			};

			int[] planes = new int[]
			{
				0,1,2,3,
				7,6,5,4
			};

			int[] normals = new int[]
			{
				-1,0,0,
				1,0,0 
			};


			vb = new VertexBuffer(
				typeof(CustomVertex.PositionNormal),
				usteps * vsteps * 3 * 2,
				dev2,
				Usage.WriteOnly,
				CustomVertex.PositionNormal.Format,
				Pool.Default);

			CustomVertex.PositionNormal[] verts = (CustomVertex.PositionNormal[])vb.Lock(0, 0);

			int pti = 0;
			for (int j = 0; j < vsteps; j++)
			{
				for (int i = 0; i < usteps; i++)
				{
					pt(ref verts[pti], i, j); pti++;
					pt(ref verts[pti], i + 1, j); pti++;
					pt(ref verts[pti], i + 1, j + 1); pti++;

					pt(ref verts[pti], i + 1, j); pti++;
					pt(ref verts[pti], i + 1, j + 1); pti++;
					pt(ref verts[pti], i, j + 1); pti++;
				}
			}


			int j4 = 0;
			for (int j = 0; j < 2; j++)
			{
				for (int p = 0; p < 4; p++)
				{
					verts[j4].X = pts[planes[j4] * 3 + 0];
					verts[j4].Y = pts[planes[j4] * 3 + 1];
					verts[j4].Z = pts[planes[j4] * 3 + 2];
					verts[j4].Nx = normals[j * 3 + 0];
					verts[j4].Ny = normals[j * 3 + 1];
					verts[j4].Nz = normals[j * 3 + 2];
					j4++;
				}
			}




			vb.Unlock();

			dev2.RenderState.CullMode = Cull.None;
			// Turn on the ZBuffer
			dev2.RenderState.ZBufferEnable = true;
			dev2.RenderState.Lighting = true;    //make sure lighting is enabled

			string dummy = "";
			eff = Effect.FromFile(dev2, "test.fx", null, ShaderFlags.None, null, out dummy);
			if (dummy != "")
				MessageBox.Show("effect err: " + dummy);

			t_start = DateTime.Now;

		}

		private DateTime t_start;

		public void R_FR()
		{

			TimeSpan ts = DateTime.Now - t_start;
			double t = ts.TotalSeconds;

			dev2.Clear(ClearFlags.Target | ClearFlags.ZBuffer, System.Drawing.Color.Blue, 1.0f, 0);
			dev2.BeginScene();


			System.Drawing.Color col = System.Drawing.Color.White;
			Direct3D.Material mtrl = new Direct3D.Material();
			mtrl.Diffuse = col;
			mtrl.Ambient = col;
			dev2.Material = mtrl;


			Vector4 lightdir = new Vector4((float)Math.Cos(Environment.TickCount / 550.0f), 1.0f, (float)Math.Sin(Environment.TickCount / 250.0f), 0);

			dev2.Transform.World = Matrix.RotationAxis(new Vector3((float)Math.Cos(t), 1, (float)Math.Sin(Environment.TickCount / 250.0f)), Environment.TickCount / 3000.0f);

			dev2.Transform.View = Matrix.LookAtLH(new Vector3(0.0f, 4.0f, -5.0f), new Vector3(0.0f, 0.0f, 0.0f), new Vector3(0.0f, 1.0f, 0.0f));

			dev2.Transform.Projection = Matrix.PerspectiveFovLH((float)Math.PI / 4.0f, 1.0f, 1.0f, 100.0f);

			ColorValue WhiteColor = new ColorValue(1.0f, 1.0f, 1.0f, 1.0f);
			ColorValue YellowColor = new ColorValue(1.0f, 1.0f, 0.0f, 1.0f);

			eff.SetValue("projectionMatrix", dev2.Transform.Projection);
			eff.SetValue("viewMatrix", dev2.Transform.View);
			eff.SetValue("worldMatrix", dev2.Transform.World);
			eff.SetValue("appTime", (float)t);

			//		eff.SetValue("g_MaterialDiffuseColor", WhiteColor);
			//		eff.SetValue("g_nNumLights", 1);

			dev2.SetStreamSource(0, vb, 0);
			dev2.VertexFormat = CustomVertex.PositionNormal.Format;

			eff.Begin(0);
			for (int p = 0; p < 4; p++)
			{
				eff.BeginPass(p);
				dev2.DrawPrimitives(PrimitiveType.TriangleList, 0, usteps * vsteps * 2 );
				eff.EndPass();
			}
			eff.End();
			dev2.EndScene();
			dev2.Present();
		}
	}
}
