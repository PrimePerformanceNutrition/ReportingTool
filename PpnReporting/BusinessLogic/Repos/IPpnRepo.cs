using PpnReporting.BusinessLogic.Models;
using PpnReporting.BusinessLogic.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace PpnReporting.BusinessLogic.Repos
{
    public interface IPpnRepo
    {
        List<Lab> GetLabs();
        Lab GetLab(int labId);
        double NutrientAverage(string nutrientName);
        ToleranceViewModel HighLowTolerance(double nutrientAverage);
        List<NutrientBulletPoint> GetNutrientBulletPoints(string nutrient);
    }
}
