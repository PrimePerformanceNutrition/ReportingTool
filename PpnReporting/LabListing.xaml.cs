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

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for LabListing.xaml
    /// </summary>
    public partial class LabListing : Page
    {
        private IPpnRepo _ppnRepo;

        public LabListing(IPpnRepo ppnRepo)
        {
            _ppnRepo = ppnRepo;
            InitializeComponent();

            LabsGrid.ItemsSource = _ppnRepo.GetLabs();
        }

        private void GenerateGraphButton_Click(object sender, RoutedEventArgs e)
        {
            var button = (Button)sender;
            var tag = (Guid)button.Tag;

            NavigationService.Navigate( new LabReport(_ppnRepo, tag));
        }
    }
}

