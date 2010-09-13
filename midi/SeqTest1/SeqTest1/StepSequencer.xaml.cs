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
using System.Windows.Shapes;

namespace SeqTest1
{
    /// <summary>
    /// Interaction logic for StepSequencer.xaml
    /// </summary>
    public partial class StepSequencer : UserControl
    {
        public StepSequencer()
        {
            InitializeComponent();
        }

        protected override void OnInitialized(EventArgs e)
        {
            base.OnInitialized(e);
        
            Background = new SolidColorBrush(Color.FromRgb(255, 0, 255));

            ComboBox cb = new ComboBox();
            cb.Visibility = Visibility.Visible;
            cb.Width = 350;
            cb.Items.Add("01: Synth 1");
            cb.Items.Add("02: Synth 2");
            cb.Items.Add("03: Synth 3");
            cb.Items.Add("04: Drums 1");
            cb.Items.Add("05: Drums 2");
            cb.FontSize = 16.0;
            Canvas.SetLeft(cb, 10);
            Canvas.SetTop(cb, 10);
            canvas1.Children.Add(cb);

            cb = new ComboBox();
            cb.Visibility = Visibility.Visible;
            cb.Width = 350;
            cb.Items.Add("P01: Bass1");
            cb.Items.Add("P01: Bass2");
            cb.Items.Add("P02: Bass2 mod 1");
            cb.Items.Add("P03: Bass3");
            cb.Items.Add("P04: Bass3 mod 2");
            cb.FontSize = 16.0;
            Canvas.SetLeft(cb, 370);
            Canvas.SetTop(cb, 10);
            canvas1.Children.Add(cb);

            StepSeqBlock ssb = new StepSeqBlock();
            ssb.Visibility = Visibility.Visible;
            Canvas.SetLeft(ssb, 10);
            Canvas.SetTop(ssb, 50);
            ssb.Width = 400;
            ssb.Height = 20;
            canvas1.Children.Add(ssb);

            ssb = new StepSeqBlock();
            ssb.Visibility = Visibility.Visible;
            Canvas.SetLeft(ssb, 100);
            Canvas.SetTop(ssb, 70);
            ssb.Width = 400;
            ssb.Height = 20;
            canvas1.Children.Add(ssb);
        }

        
    }
}
