using Microsoft.EntityFrameworkCore;
using PpnReporting.BusinessLogic.Models;
using PpnReporting.BusinessLogic.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace PpnReporting.BusinessLogic.Repos
{
    public class PpnRepo : IPpnRepo
    {
        private readonly PpnContext _db;

        public PpnRepo(PpnContext db)
            => _db = db;

        public List<Lab> GetLabs()
        {
            return _db.Labs.Include(lab => lab.Horse)
                .OrderBy(lab => lab.Horse.Name)
                .ThenBy(lab => lab.LabDate)
                .ToList();
        }

        public Lab GetLab(Guid labId)
            => _db.Labs
            .Include(lab => lab.Horse)
            .FirstOrDefault(lab => lab.LabId == labId);

        public double NutrientAverage(string nutrientName)
        {
            var t = typeof(Lab);
            var property = t.GetProperty(nutrientName);
            var name = property.Name;
            var nutrientList = _db.Labs
                .Select(lab => (double)property.GetValue(lab))
                .ToList();

            var nutrientAverage = nutrientList.Average(x => x);
            return nutrientAverage;
        }

        public ToleranceViewModel HighLowTolerance(double nutrientAverage)
            => new ToleranceViewModel
            {
                HighTolerance = nutrientAverage + (nutrientAverage * .15),
                LowTolerance = nutrientAverage - (nutrientAverage * .15)
            };

        public List<NutrientBulletPoint> GetNutrientBulletPoints(string nutrient)
            => _db.NutrientBulletPoints
            .Where(nbp => nbp.NutrientName == nutrient)
            .ToList();
    }
}
