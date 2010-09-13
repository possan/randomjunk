using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DirectShowLib;
using DirectShowLib.MultimediaStreaming;
using System.Runtime.InteropServices;
using System.Diagnostics;
using System.Threading;
using System.Drawing.Imaging;

namespace dxshowtest1
{
    public partial class Form1 : Form, ISampleGrabberCB
    {

        #region CRAP 1

        public Form1()
        {
            InitializeComponent();
        }

        IGraphBuilder graphBuilder;
        IMediaControl mediaControl;
        IMediaEventEx mediaEventEx;
        IMediaSeeking mediaSeeking;
        IMediaPosition mediaPosition;
        IVideoWindow videoWindow;
        IBasicVideo basicVideo;
        IBasicAudio basicAudio;
        Bitmap origbitmap;
        Bitmap newbitmap;
        private bool m_WantOne = false;
        private bool m_ImageChanged = false;
        private int m_videoWidth;
        private int m_videoHeight;
        private int m_stride;
        private IntPtr m_ipBuffer = IntPtr.Zero;
        private ManualResetEvent m_PictureReady = null;
        IFilterGraph2 m_FilterGraph;
        IPin m_pinStill;
        DsROTEntry m_rot;


        double duration;
        public string Filename;
        private void Form1_Load(object sender, EventArgs e)
        {
            m_PictureReady = new ManualResetEvent(false);

            //  ¨PlayMovieInWindow( "c:\\temp\\beckscen2.avi" );
            int hr;

            this.graphBuilder = (IGraphBuilder)new FilterGraph();
            //            this.graphBuilder.AddFilter( 



            // Get the SampleGrabber interface
            ISampleGrabber sampGrabber = new SampleGrabber() as ISampleGrabber;

            IBaseFilter ibfRenderer = null;
            IBaseFilter capFilter = null;
            IPin iPinInFilter = null;
            IPin iPinOutFilter = null;
            IPin iPinInDest = null;




            // Add the video source
            hr = graphBuilder.AddSourceFilter(Filename, "Ds.NET FileFilter", out capFilter);
            DsError.ThrowExceptionForHR(hr);

            // Hopefully this will be the video pin
            IPin iPinOutSource = DsFindPin.ByDirection(capFilter, PinDirection.Output, 0);

            IBaseFilter baseGrabFlt = sampGrabber as IBaseFilter;
            ConfigureSampleGrabber(sampGrabber);

            iPinInFilter = DsFindPin.ByDirection(baseGrabFlt, PinDirection.Input, 0);
            iPinOutFilter = DsFindPin.ByDirection(baseGrabFlt, PinDirection.Output, 0);

            // Add the frame grabber to the graph
            hr = graphBuilder.AddFilter(baseGrabFlt, "Ds.NET Grabber");
            DsError.ThrowExceptionForHR(hr);

            hr = graphBuilder.Connect(iPinOutSource, iPinInFilter);
            DsError.ThrowExceptionForHR(hr);

            // Get the default video renderer
            ibfRenderer = (IBaseFilter)new VideoRendererDefault();

            // Add it to the graph
            hr = graphBuilder.AddFilter(ibfRenderer, "Ds.NET VideoRendererDefault");
            DsError.ThrowExceptionForHR(hr);
            iPinInDest = DsFindPin.ByDirection(ibfRenderer, PinDirection.Input, 0);

            // Connect the graph.  Many other filters automatically get added here
            hr = graphBuilder.Connect(iPinOutFilter, iPinInDest);
            DsError.ThrowExceptionForHR(hr);

            this.mediaControl = (IMediaControl)this.graphBuilder;
            this.mediaEventEx = (IMediaEventEx)this.graphBuilder;
            this.mediaSeeking = (IMediaSeeking)this.graphBuilder;
            this.mediaPosition = (IMediaPosition)this.graphBuilder;

            this.videoWindow = this.graphBuilder as IVideoWindow;
            this.basicVideo = this.graphBuilder as IBasicVideo;
            this.basicAudio = this.graphBuilder as IBasicAudio;

            hr = this.videoWindow.put_Owner(panel1.Handle);
            DsError.ThrowExceptionForHR(hr);

            hr = this.videoWindow.put_WindowStyle(WindowStyle.Child | WindowStyle.ClipSiblings | WindowStyle.ClipChildren);
            DsError.ThrowExceptionForHR(hr);

            if (this.basicVideo == null)
                return;

            int lHeight, lWidth;
            hr = this.basicVideo.GetVideoSize(out lWidth, out lHeight);

            Console.WriteLine("video: %d x %d\n", lWidth, lHeight);

            m_videoWidth = lWidth;
            m_videoHeight = lHeight;
            SaveSizeInfo(sampGrabber);
            newbitmap = new Bitmap(lWidth, lHeight, PixelFormat.Format24bppRgb);
            origbitmap = new Bitmap(lWidth, lHeight, PixelFormat.Format24bppRgb);
            m_ImageChanged = true;
            pictureBox1.Width = lWidth;
            pictureBox1.Height = lHeight;
            pictureBox2.Width = lWidth;
            pictureBox2.Height = lHeight;
            pictureBox2.Top = pictureBox1.Top + lHeight + 4;

            duration = 0.0f;
            this.mediaPosition.get_Duration(out duration);

            m_ipBuffer = Marshal.AllocCoTaskMem(Math.Abs(m_stride) * m_videoHeight);


            //             this.ClientSize = new Size(lWidth, lHeight);
            Application.DoEvents();

            hr = this.videoWindow.SetWindowPosition(0, 0, panel1.Width, panel1.Height);

            this.mediaControl.Run();
            timer1.Enabled = true;

            //            buildCaptureGRaph( this.de ( (capDevices[iDeviceNum], iWidth, iHeight, iBPP, hControl);






            //            buildCaptureaph();


        }


        // Set the Framerate, and video size
        private void SetConfigParms(IPin pStill, int iWidth, int iHeight, short iBPP)
        {
            int hr;
            AMMediaType media;
            VideoInfoHeader v;

            IAMStreamConfig videoStreamConfig = pStill as IAMStreamConfig;

            // Get the existing format block
            hr = videoStreamConfig.GetFormat(out media);
            DsError.ThrowExceptionForHR(hr);

            try
            {
                // copy out the videoinfoheader
                v = new VideoInfoHeader();
                Marshal.PtrToStructure(media.formatPtr, v);

                // if overriding the width, set the width
                if (iWidth > 0)
                {
                    v.BmiHeader.Width = iWidth;
                }

                // if overriding the Height, set the Height
                if (iHeight > 0)
                {
                    v.BmiHeader.Height = iHeight;
                }

                // if overriding the bits per pixel
                if (iBPP > 0)
                {
                    v.BmiHeader.BitCount = iBPP;
                }

                // Copy the media structure back
                Marshal.StructureToPtr(v, media.formatPtr, false);

                // Set the new format
                hr = videoStreamConfig.SetFormat(media);
                DsError.ThrowExceptionForHR(hr);
            }
            finally
            {
                DsUtils.FreeAMMediaType(media);
                media = null;
            }
        }
        private void ConfigureSampleGrabber(ISampleGrabber sampGrabber)
        {
            int hr;
            AMMediaType media = new AMMediaType();

            // Set the media type to Video/RBG24
            media.majorType = MediaType.Video;
            media.subType = MediaSubType.RGB24;
            media.formatType = FormatType.VideoInfo;
            hr = sampGrabber.SetMediaType(media);
            DsError.ThrowExceptionForHR(hr);

            DsUtils.FreeAMMediaType(media);
            media = null;

            // Configure the samplegrabber
            hr = sampGrabber.SetCallback(this, 1);
            DsError.ThrowExceptionForHR(hr);
        }

        private void SaveSizeInfo(ISampleGrabber sampGrabber)
        {
            int hr;

            // Get the media type from the SampleGrabber
            AMMediaType media = new AMMediaType();

            hr = sampGrabber.GetConnectedMediaType(media);
            DsError.ThrowExceptionForHR(hr);

            if ((media.formatType != FormatType.VideoInfo) || (media.formatPtr == IntPtr.Zero))
            {
                throw new NotSupportedException("Unknown Grabber Media Format");
            }

            // Grab the size info
            VideoInfoHeader videoInfoHeader = (VideoInfoHeader)Marshal.PtrToStructure(media.formatPtr, typeof(VideoInfoHeader));
            m_videoWidth = videoInfoHeader.BmiHeader.Width;
            m_videoHeight = videoInfoHeader.BmiHeader.Height;
            m_stride = m_videoWidth * (videoInfoHeader.BmiHeader.BitCount / 8);

            DsUtils.FreeAMMediaType(media);
            media = null;
        }

        // Set the video window within the control specified by hControl
        private void ConfigVideoWindow(Control hControl)
        {
            int hr;

            IVideoWindow ivw = m_FilterGraph as IVideoWindow;

            // Set the parent
            hr = ivw.put_Owner(hControl.Handle);
            DsError.ThrowExceptionForHR(hr);

            // Turn off captions, etc
            hr = ivw.put_WindowStyle(WindowStyle.Child | WindowStyle.ClipChildren | WindowStyle.ClipSiblings);
            DsError.ThrowExceptionForHR(hr);

            // Yes, make it visible
            hr = ivw.put_Visible(OABool.True);
            DsError.ThrowExceptionForHR(hr);

            // Move to upper left corner
            Rectangle rc = hControl.ClientRectangle;
            hr = ivw.SetWindowPosition(0, 0, rc.Right, rc.Bottom);
            DsError.ThrowExceptionForHR(hr);
        }

        private void buildCaptureGRaph(DsDevice dev, int iWidth, int iHeight, short iBPP, Control hControl)
        {
            int hr;

            ISampleGrabber sampGrabber = null;
            IBaseFilter capFilter = null;
            IPin pCaptureOut = null;
            IPin pSampleIn = null;
            IPin pRenderIn = null;
            m_FilterGraph = new FilterGraph() as IFilterGraph2;

            try
            {
#if DEBUG
                m_rot = new DsROTEntry(m_FilterGraph);
#endif

                // add the video input device
                hr = m_FilterGraph.AddSourceFilterForMoniker(dev.Mon, null, dev.Name, out capFilter);
                DsError.ThrowExceptionForHR(hr);
                /*
                // Find the still pin
                m_pinStill = DsFindPin.ByCategory(capFilter, PinCategory.Still, 0);

                // Didn't find one.  Is there a preview pin?
                if (m_pinStill == null)
                {
                    m_pinStill = DsFindPin.ByCategory(capFilter, PinCategory.Preview, 0);
                }*/


                IPin pRaw = null;
                IPin pSmart = null;

                // There is no still pin
                // m_VidControl = null;

                // Add a splitter
                IBaseFilter iSmartTee = (IBaseFilter)new SmartTee();

                try
                {
                    hr = m_FilterGraph.AddFilter(iSmartTee, "SmartTee");
                    DsError.ThrowExceptionForHR(hr);

                    // Find the find the capture pin from the video device and the
                    // input pin for the splitter, and connnect them
                    pRaw = DsFindPin.ByCategory(capFilter, PinCategory.Capture, 0);
                    pSmart = DsFindPin.ByDirection(iSmartTee, PinDirection.Input, 0);

                    hr = m_FilterGraph.Connect(pRaw, pSmart);
                    DsError.ThrowExceptionForHR(hr);

                    // Now set the capture and still pins (from the splitter)
                    m_pinStill = DsFindPin.ByName(iSmartTee, "Preview");
                    pCaptureOut = DsFindPin.ByName(iSmartTee, "Capture");

                    // If any of the default config items are set, perform the config
                    // on the actual video device (rather than the splitter)
                    if (iHeight + iWidth + iBPP > 0)
                    {
                        SetConfigParms(pRaw, iWidth, iHeight, iBPP);
                    }
                }
                finally
                {
                    if (pRaw != null)
                        Marshal.ReleaseComObject(pRaw);

                    if (pRaw != pSmart)
                        Marshal.ReleaseComObject(pSmart);

                    if (pRaw != iSmartTee)
                        Marshal.ReleaseComObject(iSmartTee);
                }

                // Get the SampleGrabber interface
                sampGrabber = new SampleGrabber() as ISampleGrabber;

                // Configure the sample grabber
                IBaseFilter baseGrabFlt = sampGrabber as IBaseFilter;
                ConfigureSampleGrabber(sampGrabber);
                pSampleIn = DsFindPin.ByDirection(baseGrabFlt, PinDirection.Input, 0);

                // Get the default video renderer
                IBaseFilter pRenderer = new VideoRendererDefault() as IBaseFilter;
                hr = m_FilterGraph.AddFilter(pRenderer, "Renderer");
                DsError.ThrowExceptionForHR(hr);

                pRenderIn = DsFindPin.ByDirection(pRenderer, PinDirection.Input, 0);

                // Add the sample grabber to the graph
                hr = m_FilterGraph.AddFilter(baseGrabFlt, "Ds.NET Grabber");
                DsError.ThrowExceptionForHR(hr);

                //                if (m_VidControl == null)
                {
                    // Connect the Still pin to the sample grabber
                    hr = m_FilterGraph.Connect(m_pinStill, pSampleIn);
                    DsError.ThrowExceptionForHR(hr);

                    // Connect the capture pin to the renderer
                    hr = m_FilterGraph.Connect(pCaptureOut, pRenderIn);
                    DsError.ThrowExceptionForHR(hr);
                }
                /*                else
                                {
                                    // Connect the capture pin to the renderer
                                    hr = m_FilterGraph.Connect(pCaptureOut, pRenderIn);
                                    DsError.ThrowExceptionForHR(hr);

                                    // Connect the Still pin to the sample grabber
                                    hr = m_FilterGraph.Connect(m_pinStill, pSampleIn);
                                    DsError.ThrowExceptionForHR(hr);
                                }
                                */
                // Learn the video properties
                ConfigVideoWindow(hControl);

                // Start the graph
                IMediaControl mediaCtrl = m_FilterGraph as IMediaControl;
                hr = mediaCtrl.Run();
                DsError.ThrowExceptionForHR(hr);
            }
            finally
            {
                if (sampGrabber != null)
                {
                    Marshal.ReleaseComObject(sampGrabber);
                    sampGrabber = null;
                }
                if (pCaptureOut != null)
                {
                    Marshal.ReleaseComObject(pCaptureOut);
                    pCaptureOut = null;
                }
                if (pRenderIn != null)
                {
                    Marshal.ReleaseComObject(pRenderIn);
                    pRenderIn = null;
                }
                if (pSampleIn != null)
                {
                    Marshal.ReleaseComObject(pSampleIn);
                    pSampleIn = null;
                }
            }
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            float t = (float)trackBar1.Value * (float)duration / 1000.0f;

            this.mediaPosition.put_CurrentPosition((double)t);
            panel1.Focus();

        }

        #endregion

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (!trackBar1.Focused)
            {
                double tmp = 0.0f;
                this.mediaPosition.get_CurrentPosition(out tmp);
                int t = (int)(1000.0f * (float)tmp / (float)duration);
                trackBar1.Value = t;
            }

            if (m_ImageChanged)
            {
                pictureBox1.Image = origbitmap;

                int w = origbitmap.Width;
                int h = origbitmap.Height;
                Graphics g = Graphics.FromImage(newbitmap);


                ColorMatrix cm = new ColorMatrix();
                float contrast = 3.0f;
                float contrast3 = contrast / 3.0f;
                float diff = 0.33f;
                cm.Matrix00 = contrast3 + diff;
                cm.Matrix01 = contrast3 - diff;
                cm.Matrix02 = contrast3 - diff;
                cm.Matrix10 = contrast3 - diff;
                cm.Matrix11 = contrast3 + diff;
                cm.Matrix12 = contrast3 - diff;
                cm.Matrix20 = contrast3 - diff;
                cm.Matrix21 = contrast3 - diff;
                cm.Matrix22 = contrast3 + diff;

                float adj = -contrast * ((lastavg - 128.0f) / 256.0f);
                // adj -= (contrast - 1.0f);

                Console.WriteLine("matrix brightness add: " + adj);
                adj -= contrast / 2.0f;
                adj += 0.05f;
                cm.Matrix40 = adj;
                cm.Matrix41 = adj;
                cm.Matrix42 = adj;

                ImageAttributes imgattr = new ImageAttributes();
                imgattr.SetColorMatrix(cm);
                g.DrawImage(origbitmap, new Rectangle(0, 0, w, h), 0, 0, w, h, GraphicsUnit.Pixel, imgattr);

                g.DrawImage(origbitmap, 0, 0, 32, 32);

                float avg_r = 0.0f;
                float avg_g = 0.0f;
                float avg_b = 0.0f;

                for (int k = 0; k < 32; k++)
                {
                    for (int i = 0; i < 32; i++)
                    {
                        Color c = newbitmap.GetPixel(i, k);
                        avg_r += (float)c.R;
                        avg_g += (float)c.G;
                        avg_b += (float)c.B;
                    }
                }

                avg_r /= (float)(32 * 32);
                avg_g /= (float)(32 * 32);
                avg_b /= (float)(32 * 32);
                float avg = (avg_r + avg_g + avg_b) / 3.0f;

                //            Console.WriteLine("avg color: " + avg_r + ", " + avg_g + ", " + avg_b);
                //       Console.WriteLine("avg total: " + avg);
                //      Console.WriteLine("last average: " + lastavg);
                //                Console.WriteLine();

                /*
                Random r = new Random();
                Pen p = new Pen(Color.FromArgb(r.Next() % 255, r.Next() % 255, r.Next() % 255));
                g.DrawLine(p, r.Next() % w, r.Next() % h, r.Next() % w, r.Next() % h);
                */


                lastavg += (avg - lastavg) / 3.0f;

                pictureBox2.Image = newbitmap;
            }
        }

        float lastavg = 128.0f;

        #region CRAP 2

        private void trackBar1_MouseCaptureChanged(object sender, EventArgs e)
        {
        }

        private void trackBar1_MouseUp(object sender, MouseEventArgs e)
        {
            panel1.Focus();
        }


        /// <summary> sample callback, NOT USED. </summary>
        int ISampleGrabberCB.SampleCB(double SampleTime, IMediaSample pSample)
        {
            Marshal.ReleaseComObject(pSample);
            return 0;
        }

        [DllImport("Kernel32.dll", EntryPoint = "RtlMoveMemory")]
        private static extern void CopyMemory(IntPtr Destination, IntPtr Source, [MarshalAs(UnmanagedType.U4)] int Length);





        /// <summary> buffer callback, COULD BE FROM FOREIGN THREAD. </summary>
        int ISampleGrabberCB.BufferCB(double SampleTime, IntPtr pBuffer, int BufferLen)
        {
            // Console.WriteLine("SampleGrabber Buffer Callback; time=" + SampleTime + ", buffer=" + BufferLen);
            // Note that we depend on only being called once per call to Click.  Otherwise
            // a second call can overwrite the previous image.
            // Debug.Assert(BufferLen == Math.Abs(m_stride) * m_videoHeight, "Incorrect buffer length");

            //      if (m_WantOne)
            //    {
            //      m_WantOne = false;

            // Save the buffer
            CopyMemory(m_ipBuffer, pBuffer, BufferLen);

            Bitmap tmpb = new Bitmap(m_videoWidth, m_videoHeight, m_stride, PixelFormat.Format24bppRgb, m_ipBuffer);
            // If the image is upsidedown
            tmpb.RotateFlip(RotateFlipType.RotateNoneFlipY);

            Graphics og = Graphics.FromImage(origbitmap);
            og.DrawImage(tmpb, 0, 0);
            // Picture is ready.
            m_PictureReady.Set();

            m_ImageChanged = true;
            //    }

            return 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            // get ready to wait for new image
            m_PictureReady.Reset();

            try
            {
                m_WantOne = true;
                if (!m_PictureReady.WaitOne(20, false))
                {
                }
            }
            catch
            {
                Marshal.FreeCoTaskMem(m_ipBuffer);
                m_ipBuffer = IntPtr.Zero;
                throw;
            }


            Bitmap b = new Bitmap(m_videoWidth, m_videoHeight, m_stride, PixelFormat.Format24bppRgb, m_ipBuffer);
            // If the image is upsidedown
            b.RotateFlip(RotateFlipType.RotateNoneFlipY);
            pictureBox1.Image = b;

        }

        int counter = 0;

        private void button2_Click(object sender, EventArgs e)
        {
            //   int ps = mediaControl.GetState(10,null);
            // Console.WriteLine("current playstate = " + ps);
        }

        #endregion

    }
}
