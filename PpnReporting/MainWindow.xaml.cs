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
using System.Windows.Shapes;

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private LabListing _labListingPage;
        public MainWindow(LabListing labListingPage)
        {
            _labListingPage = labListingPage;
            InitializeComponent();

            MainFrame.Content = _labListingPage;
        }
    }
}
