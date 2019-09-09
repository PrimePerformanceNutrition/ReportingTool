using LiveCharts;
using LiveCharts.Wpf;
using PpnReporting.BusinessLogic.Models;
using PpnReporting.BusinessLogic.Repos;
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

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for LabChart.xaml
    /// </summary>
    public partial class LabChart : UserControl
    {
        private readonly IPpnRepo _ppnRepo;

        public LabChart()
        {
            InitializeComponent();
        }

        public LabChart(IPpnRepo ppnRepo, string nutrientName, double nutrientValue, string horseName, List<NutrientBulletPoint> bulletPoints)
        {
            InitializeComponent();

            _ppnRepo = ppnRepo;
            var nutrientAverage = _ppnRepo.NutrientAverage(nutrientName);
            var nutrientTolerances = _ppnRepo.HighLowTolerance(nutrientAverage);

            SeriesCollection = new SeriesCollection
            {
                new ColumnSeries
                {
                    Title = horseName,
                    Values = new ChartValues<double> { nutrientValue },

                },
                new ColumnSeries
                {
                    Title = "All Horses Average",
                    Values = new ChartValues<double> { nutrientAverage }
                },
                new StepLineSeries
                {
                    Title = "High Tolerance",
                    Values = new ChartValues<double> { nutrientTolerances.HighTolerance, nutrientTolerances.HighTolerance },
                    PointGeometry = null
                },
                new StepLineSeries
                {
                    Title = "Low Tolerance",
                    Values = new ChartValues<double> { nutrientTolerances.LowTolerance, nutrientTolerances.LowTolerance },
                    PointGeometry = null

                }
            };

            DataContext = this;
            Labels = new[] { nutrientName };

            BulletPoints = bulletPoints;
        }

        public List<NutrientBulletPoint> BulletPoints { get; set; }
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public Func<double, string> Formatter { get; set; }
    }
}
