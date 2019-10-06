using LiveCharts;
using LiveCharts.Wpf;
using PpnReporting.BusinessLogic.Models;
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
        public double PanelWidth { get; set; }
        public double PanelHeight { get; set; }
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> Formatter { get; set; }

        public LabReportCover()
        {
            InitializeComponent();
        }

        public LabReportCover(double width, double height, double horseOverallAverage, double allHorsesOverallAverage, Lab lab)
        {
            Height = height;
            Width = width;

            PanelWidth = width;
            PanelHeight = height;

            InitializeComponent();

            SeriesCollection = new SeriesCollection
            {
                new RowSeries
                {
                    Values = new ChartValues<double> {horseOverallAverage},
                    StrokeThickness = 0,
                    DataLabels = false,
                    Title = lab.Horse.Name,
                    
                },
                new RowSeries
                {
                    Values = new ChartValues<double> {allHorsesOverallAverage},
                    StrokeThickness = 0,
                    DataLabels = false,
                    Title = "All",
                    LabelPoint = null
                }
            };

            //Formatter = value => null;

            Labels = new[] { lab.Horse.Name, "All" };
            DataContext = this;
        }


        private void InitReportCoverLabProperties(Lab lab)
        {
            LabNumber.Text = lab.LabId.ToString();

        }

    }
}
