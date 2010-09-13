using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Threading;
using System.Drawing;

namespace MenuServer.TestClient
{
    class MenuPlaceholder : Panel
    {
        Control _current;
        Control _last;
        Control _next;
        System.Windows.Forms.Timer _timer;
        int animcounter;
        int animmode;

//         Queue<AnimQueueItem> 


        public MenuPlaceholder()
            : base()
        {
            _current = null;
            _last = null;
            _next = null;
            animcounter = 0;
            animmode = 0;
        }

        protected override void OnCreateControl()
        {
            base.OnCreateControl();

            _timer = new System.Windows.Forms.Timer();
            _timer.Enabled = false;
            _timer.Interval = 10;
            _timer.Tick += new EventHandler(_timer_Tick);

            BackColor = Color.FromArgb(40, 40, 40);
        }

        float maptopercent(float t, float tmin, float tmax)
        {
            if (t < tmin)
                t = tmin;
            if (t > tmax)
                t = tmax;
            float pct = (t - tmin) / (tmax - tmin);
            return pct;
        }

        float maptovalue(float t, float omin, float omax)
        {
            float o = omin + (t * (omax - omin));
            return o;
        }
        // t and d can be in frames or seconds/milliseconds
        float easeInQuad(float t, float b, float c, float d)
        {
            return c * (t /= d) * t + b;
        }

        // quadratic easing out - decelerating to zero velocity
        float easeOutQuad(float t, float b, float c, float d)
        {
            return -c * (t /= d) * (t - 2) + b;
        }

        // quadratic easing in/out - acceleration until halfway, then deceleration
        float easeInOutQuad(float t, float b, float c, float d)
        {
            if ((t /= d / 2) < 1)
                return c / 2 * t * t + b;
            return -c / 2 * ((--t) * (t - 2) - 1) + b;
        }

        float ease(float t)
        {
            return t;
        }




        public void BeginAnimateNext(Control next)
        {
            WaitForAnimationToFinish(); 
            ClearLast();
            _last = _current;
            _next = next;

            if (_last != null)
            {
                _last.Left = 0;
                _last.Top = 0;
            }

            if (_next != null)
            {
                this.Controls.Add(_next);
                _next.Left = 240;
                _next.Top = 0;
            }

            animcounter = 0;
            animmode = 1;
            _timer.Enabled = true;
        }

        private void WaitForAnimationToFinish()
        {
            while (animmode != 0)
            {
                Application.DoEvents();
                Thread.Sleep(5);
            }
        }

        public void BeginAnimateBack(Control next)
        {
            if (animmode != 0)
                return;

            ClearLast();
            _last = _current;
            _next = next;

            if (_last != null)
            {
                _last.Left = 0;
                _last.Top = 0;
            }

            if (_next != null)
            {
                this.Controls.Add(_next);
                _next.Left = -240;
                _next.Top = 0;
            }

            animcounter = 0;
            animmode = 2;
            _timer.Enabled = true;
        }

        public void BeginAnimateReplace(Control next)
        {
            if (animmode != 0)
                return;

            ClearLast();
            _last = _current;
            _next = next;

            if (_last != null)
            {
                _last.Left = 0;
                _last.Top = 0;
            }

            if (_next != null)
            {
                this.Controls.Add(_next);
                _next.Left = -240;
                _next.Top = 0;
            }

            animcounter = 0;
            animmode = 3;
            _timer.Enabled = true;
        }

        private void ClearLast()
        {
            if (_last != null)
                if (this.Controls.Contains(_last))
                    this.Controls.Remove(_last);
            _last = null;
        }


        void _timer_Tick(object sender, EventArgs e)
        {
            int min_x = -240;
            int max_x = 240;

            if (animcounter < 50)
            {
                if (animmode == 1)
                {
                    float t1 = maptopercent(animcounter, 0, 30);
                    float t2 = maptopercent(animcounter, 10, 40);

                    t1 = easeInQuad(t1, 0.0f, 1.0f, 1.0f);
                    t2 = easeInOutQuad(t2, 0.0f, 1.0f, 1.0f);

                    float x1 = maptovalue(t1, 0, min_x);
                    float x2 = maptovalue(t2, max_x, 0);

                    if (_last != null) _last.Left = (int)x1;
                    if (_next != null) _next.Left = (int)x2;
                }
                else if (animmode == 2)
                {

                    float t1 = maptopercent(animcounter, 0, 30);
                    float t2 = maptopercent(animcounter, 10, 40);

                    t1 = easeInQuad(t1, 0.0f, 1.0f, 1.0f);
                    t2 = easeInOutQuad(t2, 0.0f, 1.0f, 1.0f);

                    float x1 = maptovalue(t1, 0, max_x);
                    float x2 = maptovalue(t2, min_x, 0);

                    if (_last != null) _last.Left = (int)x1;
                    if (_next != null) _next.Left = (int)x2;
                }
                else if (animmode == 3)
                {

                    float t1 = maptopercent(animcounter, 0, 25);
                    float t2 = maptopercent(animcounter, 25, 50);

                    t1 = easeInOutQuad(t1, 0.0f, 1.0f, 1.0f);
                    t2 = easeInOutQuad(t2, 0.0f, 1.0f, 1.0f);

                    float x1 = maptovalue(t1, 0, min_x);
                    float x2 = maptovalue(t2, min_x, 0);

                    if (_last != null) _last.Left = (int)x1;
                    if (_next != null) _next.Left = (int)x2;
                }

                animcounter++;
            }
            else
            {
                // all done.
                _timer.Enabled = false;
                animmode = 0;
                ClearLast();
                _current = _next;
            }



        }

    }


}
