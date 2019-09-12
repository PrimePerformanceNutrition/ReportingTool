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

            var printDialog = new PrintDialog();            
            var fixedDocument = new FixedDocument();

            fixedDocument.DocumentPaginator.PageSize =
                new Size(printDialog.PrintableAreaWidth, printDialog.PrintableAreaHeight);

            var fixedPage = CreateFixedPage(
                fixedDocument.DocumentPaginator.PageSize.Width,
                fixedDocument.DocumentPaginator.PageSize.Height
            );

            var pageContent = new PageContent();
            var stackPanel = new StackPanel
            {
                Width = fixedDocument.DocumentPaginator.PageSize.Width                
            };

            

            for (var i = 0; i < labCharts.Count; i++)
            {                
                stackPanel.Children.Add(labCharts[i].LabChart);                           

                if (i % 3 == 0)
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

            DocViewer.Document = fixedDocument;



            //chartItems.ItemsSource = labCharts;

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
            DocViewer.Print();

            //var dialog = new SaveFileDialog();

            //dialog.AddExtension = true;
            //dialog.DefaultExt = "pdf";
            //dialog.Filter = "PDF Document (*.pdf)|*.pdf";
            //dialog.FileName = "test"; // TODO give correct name

            //if (dialog.ShowDialog() == false)
            //    return;

            //var image = new WriteableBitmap(CreateBitmap());

            //var pdf = new PdfDocument();
            //var page = new PdfPage();
            //pdf.Pages.Add(page);

            //var xGraphics = XGraphics.FromPdfPage(pdf.Pages[0]);

            //Stream bitMapStream;

            //using (bitMapStream = new MemoryStream())
            //{
            //    var encoder = new BmpBitmapEncoder();
            //    encoder.Frames.Add(BitmapFrame.Create(image));
            //    encoder.Save(bitMapStream);
            //    var xImage = XImage.FromStream(bitMapStream);
            //    xGraphics.DrawImage(xImage, 0, 0);
            //}

            //pdf.Save(dialog.FileName);
            //pdf.Close();
        }

        public BitmapSource CreateBitmap(FrameworkElement element)
        {
            int width = (int)Math.Ceiling(element.ActualWidth);
            int height = (int)Math.Ceiling(element.ActualHeight);

            width = width == 0 ? 1 : width;
            height = height == 0 ? 1 : height;

            // render element to image (WPF)  
            RenderTargetBitmap rtbmp = new RenderTargetBitmap(width, height, 96, 96, PixelFormats.Default);
            rtbmp.Render(element);
            return rtbmp;
        }
    }
}
