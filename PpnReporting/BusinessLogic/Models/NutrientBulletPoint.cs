using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace PpnReporting.BusinessLogic.Models
{
    public class NutrientBulletPoint
    {
        [Key]
        public int Id { get; set; }
        public string NutrientName { get; set; }
        public string BulletPoint { get; set; }
        // Either Excessive or Deficient
        public  string Range { get; set; }
    }

    
}
