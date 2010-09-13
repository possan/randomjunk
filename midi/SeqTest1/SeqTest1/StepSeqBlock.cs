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
    /// Follow steps 1a or 1b and then 2 to use this custom control in a XAML file.
    ///
    /// Step 1a) Using this custom control in a XAML file that exists in the current project.
    /// Add this XmlNamespace attribute to the root element of the markup file where it is 
    /// to be used:
    ///
    ///     xmlns:MyNamespace="clr-namespace:SeqTest1"
    ///
    ///
    /// Step 1b) Using this custom control in a XAML file that exists in a different project.
    /// Add this XmlNamespace attribute to the root element of the markup file where it is 
    /// to be used:
    ///
    ///     xmlns:MyNamespace="clr-namespace:SeqTest1;assembly=SeqTest1"
    ///
    /// You will also need to add a project reference from the project where the XAML file lives
    /// to this project and Rebuild to avoid compilation errors:
    ///
    ///     Right click on the target project in the Solution Explorer and
    ///     "Add Reference"->"Projects"->[Browse to and select this project]
    ///
    ///
    /// Step 2)
    /// Go ahead and use your control in the XAML file.
    ///
    ///     <MyNamespace:StepSeqBlock/>
    ///
    /// </summary>
    public class StepSeqBlock : UserControl
    {
        static StepSeqBlock()
        {
            DefaultStyleKeyProperty.OverrideMetadata(typeof(StepSeqBlock), new FrameworkPropertyMetadata(typeof(StepSeqBlock)));
        }

        protected override void OnInitialized(EventArgs e)
        {
            base.OnInitialized(e);
        }

        protected override void OnRender(DrawingContext drawingContext)
        {

            Brush b = new SolidColorBrush(Color.FromRgb(128, 128, 128));
            Pen p = new Pen(new SolidColorBrush(Color.FromRgb(255, 255, 255)), 3);
            drawingContext.DrawRoundedRectangle(b, p, new Rect(0, 0, Width, Height), 5, 5);
        }
    }
}
