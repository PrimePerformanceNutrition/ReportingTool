using PpnReporting.BusinessLogic;
using PpnReporting.BusinessLogic.Models;
using PpnReporting.BusinessLogic.Repos;
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
using LiveCharts;
using LiveCharts.Wpf;
using System.Linq;
using PpnReporting.BusinessLogic.ViewModels;

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for LabReport.xaml
    /// </summary>
    public partial class LabReport : Page
    {
        private readonly IPpnRepo _ppnRepo;
        public LabReport()
        {
            InitializeComponent();
        }

        public LabReport(IPpnRepo ppnRepo, Guid labId)
        {
            _ppnRepo = ppnRepo;
            InitializeComponent();

            var lab = _ppnRepo.GetLab(labId);
            if (lab == null)
                throw new NullReferenceException($"There is no lab in the database with a LabId of {labId}");

            ProcessCharForEachNutrient(lab);
        }

        private void ProcessCharForEachNutrient(Lab lab)
        {
            var properties = lab.GetType().GetProperties();
            var horseName = lab.Horse.Name;
            var labCharts = new List<LabNutrientViewModel>();

            foreach (var property in properties)
            {
                // Skip LabId, Horse, and LabDate
                if (property.Name == nameof(lab.LabId) || property.Name == nameof(lab.Horse) || property.Name == nameof(lab.LabDate))
                    continue;

                var propertyValue = (double)property.GetValue(lab);
                // TODO Add bullet points
                labCharts.Add(new LabNutrientViewModel
                {
                    LabChart = new LabChart(_ppnRepo, property.Name, propertyValue, horseName, 
                        bulletPoints: _ppnRepo.GetNutrientBulletPoints(property.Name))
                });
            }

            chartItems.ItemsSource = labCharts;
        }
    }
}
