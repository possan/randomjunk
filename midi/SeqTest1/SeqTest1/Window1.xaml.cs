using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SeqTest1
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        StepSequencer seq = null;
        TopBlock top = null;

        public Window1()
        {
            InitializeComponent();
        }

        private void Window_Initialized(object sender, EventArgs e)
        {

   
            top = new TopBlock();
            top.Background = new SolidColorBrush(Color.FromRgb(255, 0, 0));
            top.HorizontalAlignment = HorizontalAlignment.Stretch;
            top.Width = double.NaN;
            DockPanel.SetDock(top, Dock.Top);
             panel1.Children.Add(top);
             panel1.LastChildFill = true;

             seq = new StepSequencer();
            seq.HorizontalAlignment = HorizontalAlignment.Stretch;
            seq.VerticalAlignment = VerticalAlignment.Stretch;
            seq.Width = double.NaN;
            seq.Height = double.NaN;
            panel1.Children.Add(seq);
            DockPanel.SetDock(seq, Dock.Bottom );

            // topContent.Children.Add(top);
            // mainContent.Children.Add(seq);
        }

        
        void updateSizes()
        {
        /*    top.Width = Width;
            seq.Width = Width;
            seq.Height = Height - top.Height;
       */
        }

        protected override Size ArrangeOverride(Size arrangeBounds)
        {
            return base.ArrangeOverride(arrangeBounds);
        }
 
        private void Window_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.F2)
            {
                
                MessageBox.Show(Width + "x" + Height);
               // UpdateLayout();
                   Arrange(new Rect(0, 0, Width, Height));
                // updateSizes();
            }

            if (e.Key == Key.F11)
            {
                if (WindowState == WindowState.Maximized)
                {
                    WindowStyle = WindowStyle.ThreeDBorderWindow;
                    Topmost = false;
                    WindowState = WindowState.Normal;
                }
                else
                {
                    WindowStyle = WindowStyle.None;
                    Topmost = true;
                    WindowState = WindowState.Maximized;
                }
            }
        }

        protected override void OnStateChanged(EventArgs e)
        {
            if (WindowState == WindowState.Maximized)
            {
                WindowStyle = WindowStyle.None;
                WindowState = WindowState.Maximized;
                Topmost = true;
            }
            else
            {
                WindowStyle = WindowStyle.ThreeDBorderWindow;
                Topmost = true;
            }
        }

        private void Window_StateChanged(object sender, EventArgs e)
        {/*
            if (WindowState == WindowState.Maximized)
            {
                WindowStyle = WindowStyle.None;
                WindowState = WindowState.Maximized;
                Topmost = true;
            }
            else
            {
                WindowStyle = WindowStyle.ThreeDBorderWindow;
                Topmost = true;
            }*/
            base.OnStateChanged(e);
        }

        private void Window_SizeChanged(object sender, SizeChangedEventArgs e)
        {
            updateSizes();
        }
    }
}
