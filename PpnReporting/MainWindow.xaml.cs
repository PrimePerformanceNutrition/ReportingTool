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
using System.Windows.Shapes;

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private IPpnRepo _ppnRepo;

        public MainWindow(IPpnRepo ppnRepo)
        {
            _ppnRepo = ppnRepo;
            InitializeComponent();

            LabsGrid.ItemsSource = _ppnRepo.GetLabs();
        }
    }
}
