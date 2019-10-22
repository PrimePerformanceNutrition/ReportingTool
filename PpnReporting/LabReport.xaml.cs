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
using PdfSharp;
using Microsoft.Win32;
using System.IO;
using System.Windows.Xps.Packaging;
using System.Windows.Xps;
using PdfSharp.Pdf;
using PdfSharp.Drawing;
using System.Windows.Markup;


namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for LabReport.xaml
    /// </summary>
    public partial class LabReport : Page
    {
        private readonly IPpnRepo _ppnRepo;
        private FixedDocument _printableDocument;
        public LabReport()
        {
            InitializeComponent();
        }

        public LabReport(IPpnRepo ppnRepo, int labId)
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
            var propertyValues = new List<double>();
            var allHorseNurtientAverages = new List<double>();

            foreach (var property in properties)
            {
                // Skip LabId, Horse, LabDate, LabNumber and SampleId
                if (property.Name == nameof(lab.LabId) 
                    || property.Name == nameof(lab.Horse) 
                    || property.Name == nameof(lab.LabDate) 
                    || property.Name == nameof(lab.LabNumber) 
                    || property.Name == nameof(lab.SampleId)
                    || property.Name == nameof(lab.Zirconium)
                    || property.Name == nameof(lab.Strontium)
                    || property.Name == nameof(lab.Rubidium)
                    || property.Name == nameof(lab.Platinum)
                    || property.Name == nameof(lab.Thallium))
                    continue;

                var propertyValue = (double)property.GetValue(lab);
                propertyValues.Add(propertyValue);

                allHorseNurtientAverages.Add(_ppnRepo.NutrientAverage(property.Name));

                // TODO Add bullet points
                labCharts.Add(new LabNutrientViewModel
                {
                    LabChart = new LabChart(_ppnRepo, property.Name, propertyValue, horseName,
                        bulletPoints: _ppnRepo.GetNutrientBulletPoints(property.Name))
                });
            }

            var droppedHightestAndLowest = allHorseNurtientAverages.OrderBy(x => x).ToList();
            droppedHightestAndLowest.RemoveAt(0);
            droppedHightestAndLowest.OrderByDescending(x => x).ToList();
            droppedHightestAndLowest.RemoveAt(0);
            
            var allHorsesOverallAverage = droppedHightestAndLowest.Average();

            // TODO : Take an average of all of the property values
            var horseaverage = propertyValues.Average();

            var printDialog = new PrintDialog();            
            var fixedDocument = new FixedDocument();            

            fixedDocument.DocumentPaginator.PageSize =
                new Size(
                    printDialog.PrintableAreaWidth,
                    printDialog.PrintableAreaHeight
                );

            var fixedPage = CreateFixedPage(
                fixedDocument.DocumentPaginator.PageSize.Width,
                fixedDocument.DocumentPaginator.PageSize.Height
            );         
            
            // handle first page
            var pageContent = new PageContent();

            fixedPage.Children.Add(new LabReportCover(
                    fixedDocument.DocumentPaginator.PageSize.Width,
                    fixedDocument.DocumentPaginator.PageSize.Height,
                    horseaverage,
                    allHorsesOverallAverage,
                    lab));

            ((IAddChild)pageContent).AddChild(fixedPage);
            fixedDocument.Pages.Add(pageContent);



            fixedPage = CreateFixedPage(
                        fixedDocument.DocumentPaginator.PageSize.Width,
                        fixedDocument.DocumentPaginator.PageSize.Height
                    );

            pageContent = new PageContent();
            var stackPanel = new StackPanel
            {
                Width = fixedDocument.DocumentPaginator.PageSize.Width
            };

            foreach(var chart in labCharts)
            {
                stackPanel.Children.Add(chart.LabChart);

                if(stackPanel.Children.Count == 3)
                {
                    fixedPage.Children.Add(stackPanel);
                    ((IAddChild)pageContent).AddChild(fixedPage);
                    fixedDocument.Pages.Add(pageContent);

                    // recreate pageContent and fixedPage
                    fixedPage = CreateFixedPage(
                        fixedDocument.DocumentPaginator.PageSize.Width,
                        fixedDocument.DocumentPaginator.PageSize.Height
                    );

                    pageContent = new PageContent();
                    stackPanel = new StackPanel
                    {
                        Width = fixedDocument.DocumentPaginator.PageSize.Width
                    };
                }
            }

            
            // handle end of last page
            var textBlock = new TextBlock
            {
                Text = "Thank you for trusting Prime Performance Nutrition to generate this report. Please use code HTA19 to receive 10% off your next order at www.primeperformancenutrition.com",
                TextAlignment = TextAlignment.Center,
                TextWrapping = TextWrapping.Wrap,
                FontFamily = new FontFamily("./Fonts/#Open Sans Condensed Light"),
            };

            stackPanel.Children.Add(textBlock);

            // add the last remainder
            fixedPage.Children.Add(stackPanel);
            ((IAddChild)pageContent).AddChild(fixedPage);
            fixedDocument.Pages.Add(pageContent);
 
            DocViewer.Document = fixedDocument;           
            _printableDocument = fixedDocument;
        }

        private FixedPage CreateFixedPage(double width, double height)
        {
            return new FixedPage
            {
                Width = width,
                Height = height
            };
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            var dialog = new SaveFileDialog
            {
                AddExtension = true,
                DefaultExt = "pdf",
                Filter = "PDF Document (*.pdf)|*.pdf"
            };
            //dialog.FileName = "test"; // TODO give correct name

            if (dialog.ShowDialog() == false)
                return;
            try
            {
                string targetFile = System.IO.Path.GetTempFileName();
                System.Diagnostics.Debug.Print(targetFile);

                var xpsDocument = new XpsDocument(targetFile, FileAccess.ReadWrite);
                var xpsWriter = XpsDocument.CreateXpsDocumentWriter(xpsDocument);
                xpsWriter.Write(_printableDocument);
                xpsDocument.Close();

                using (var filestream = File.Open(targetFile, FileMode.Open, FileAccess.ReadWrite))
                {
                    var pdfXpsDoc = PdfSharp.Xps.XpsModel.XpsDocument.Open(filestream);
                    PdfSharp.Xps.XpsConverter.Convert(pdfXpsDoc, dialog.FileName, 0);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
            
            // TODO: Delete xps
        }
    }
}
