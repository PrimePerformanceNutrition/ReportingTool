using System;
using System.Collections.Generic;
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

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for LabReportCover.xaml
    /// </summary>
    public partial class LabReportCover : UserControl
    {
        protected double PanelWidth { get; set; }
        protected double PanelHeight { get; set; }


        public LabReportCover()
        {
            InitializeComponent();
        }

        public LabReportCover(double width, double height)
        {
            Height = height;
            Width = width;

            PanelWidth = width;
            PanelHeight = height;

            InitializeComponent();
        }


    }
}
