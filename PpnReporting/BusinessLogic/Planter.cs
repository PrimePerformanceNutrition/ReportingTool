using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using OfficeOpenXml;
using PpnReporting.BusinessLogic.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;

namespace PpnReporting.BusinessLogic
{
    public class Planter
    {
        private readonly PpnContext _db;

        public Planter(PpnContext db)
            => _db = db;

        public void Seed()
        {
            var appRoot = AppContext.BaseDirectory;
            var fileName = "PPNElementAverages.xlsx";            

            if(File.Exists(Path.Combine(appRoot, fileName)))
            {
                using(var file = File.OpenRead(Path.Combine(appRoot, fileName)))
                {
                    try
                    {
                        using(var package = new ExcelPackage(file))
                        {
                            using (var worksheet = package.Workbook.Worksheets["Sheet1"])
                            {
                                var rowCount = worksheet.Dimension.Rows;
                                var cellCount = worksheet.Dimension.Columns;

                                // Handle Horse Names
                                for (var i = 2; i < cellCount; i++)
                                {
                                    var data = worksheet.Cells[2, i];

                                    if (data.Value.ToString().Contains("AVERAGES"))
                                        break;

                                    // Replace Example (04/20) with a blank space
                                    var value = Regex.Replace(data.Value.ToString(), @"\([0-9]*\/[0-9]*\)", @""); 

                                    if (!_db.Horses.Any(horse => horse.Name == value))
                                    {
                                        _db.Horses.Add(new Horse
                                        {
                                            Name = value
                                        });
                                    }

                                    _db.SaveChanges();
                                }

                                var labs = new List<Lab>();

                                // Start with the columns and work the way down each row, per column
                                for(int columnIndex = 2; columnIndex < cellCount; columnIndex++)
                                {
                                    var lab = new Lab();

                                    for(int rowIndex = 3; rowIndex < rowCount; rowIndex++)
                                    {
                                        var nutrientLabelColumn = 1;
                                        var horseNameRow = 2;

                                        var horseName = (string)worksheet.Cells[horseNameRow, columnIndex].Value;                                        

                                        if (horseName == string.Empty || horseName.Contains("AVERAGES"))
                                            break;                                        

                                        string labDateString = string.Empty;

                                        try
                                        {
                                            labDateString = Regex.IsMatch(horseName, @"\([0-9]*\/[0-9]*\)")
                                                ? horseName.Split("(")[1].Replace(")", "")
                                                : string.Empty;
                                        }
                                        catch (Exception)
                                        {
                                            labDateString = string.Empty;
                                        }

                                        DateTime? labDate = null;
                                        if (!string.IsNullOrEmpty(labDateString))
                                            DateTime.Parse(labDateString);

                                        var nutrientName = (string)worksheet.Cells[rowIndex, nutrientLabelColumn].Value;

                                        var nutrientValue = worksheet.Cells[rowIndex, columnIndex].Value;

                                        //System.Diagnostics.Debug.WriteLine($"{horseName}, {nutrientName} : {nutrientValue}");

                                        PopulateLabProerty(ref lab, nutrientName, nutrientValue);

                                        lab.Horse = _db.Horses.FirstOrDefault(h => h.Name == Regex.Replace(horseName, @"\([0-9]*\/[0-9]*\)", @""));
                                        lab.LabDate = labDate.HasValue
                                            ? labDate.Value
                                            : DateTime.Now;                                                  

                                        lab.LabId = Guid.NewGuid();
                                    }

                                    if (lab.Horse == null) break;

                                    labs.Add(lab);                                    
                                }

                                // check for duplicate values already written in the database             
                                foreach (var lab in labs)
                                    if (!IsDuplicate(lab))
                                    {
                                        _db.Add(lab);
                                        _db.SaveChanges();
                                    }
                                
                            }                            
                        }
                    }
                    catch(Exception e)
                    {
                        throw e;
                    }
                }
            }
        }

        private bool IsDuplicate(Lab labToFind)
        {
            var foundLab = _db.Labs.AsNoTracking().Any(lab =>
                lab.Boron == labToFind.Boron &&
                lab.Calcium == labToFind.Calcium &&
                lab.Chromium == labToFind.Chromium &&
                lab.Cobalt == labToFind.Cobalt &&
                lab.Copper == labToFind.Copper &&
                lab.Germanium == labToFind.Germanium &&
                lab.Horse == labToFind.Horse &&
                lab.Iodine == labToFind.Iodine &&
                lab.Iron == labToFind.Iron &&
                lab.LabDate == labToFind.LabDate &&
                lab.Lithium == labToFind.Lithium &&
                lab.Magnesium == labToFind.Magnesium &&
                lab.Manganese == labToFind.Manganese &&
                lab.Molybdemnum == labToFind.Molybdemnum &&
                lab.Phosphorus == labToFind.Phosphorus &&
                lab.Potassium == labToFind.Potassium &&
                lab.Rubidium == labToFind.Rubidium &&
                lab.Selenium == labToFind.Selenium &&
                lab.Sodium == labToFind.Sodium &&
                lab.Strontium == labToFind.Strontium &&
                lab.Sulfur == labToFind.Sulfur &&
                lab.Vanadium == labToFind.Vanadium &&
                lab.Zinc == labToFind.Zinc &&
                lab.Zirconium == labToFind.Zirconium);

            return foundLab;
        }

        private void PopulateLabProerty(ref Lab lab, string nutrientName, object nutrientValue)
        {
            var labProperties = lab.GetType().GetProperties();
            PropertyInfo matchingLabProperty = null;
            var cleansedNutrientName = nutrientName.Split(' ')[0];
            foreach(var labProperty in labProperties)
            {
                if (labProperty.Name == cleansedNutrientName)
                {
                    matchingLabProperty = labProperty;
                    break;
                }
            }

            matchingLabProperty.SetValue(lab, nutrientValue);
        }
    }
}
