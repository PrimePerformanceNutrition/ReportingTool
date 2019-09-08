using PpnReporting.BusinessLogic.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace PpnReporting.BusinessLogic.ViewModels
{
    public class LabNutrientViewModel
    {
        public LabChart LabChart { get; set; }

        public List<NutrientBulletPoint> BulletPoints { get; set; }

    }
}
