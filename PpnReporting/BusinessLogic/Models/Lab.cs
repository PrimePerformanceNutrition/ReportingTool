using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace PpnReporting.BusinessLogic.Models
{
    public class Lab
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public Guid LabId { get; set; }

        public Horse Horse { get; set; }

        public DateTime LabDate { get; set; }
        
        public double Calcium { get; set; }

        public double Magnesium { get; set; }

        public double Sodium { get; set; }

        public double Potassium { get; set; }

        public double Copper { get; set; }

        public double Zinc { get; set; }

        public double Manganese { get; set; }

        public double Chromium { get; set; }

        public double Vanadium { get; set; }

        public double Molybdemnum { get; set; }

        public double Boron { get; set; }

        public double Iodine { get; set; }

        public double Lithium { get; set; }

        public double Phosphorus { get; set; }

        public double Selenium { get; set; }

        public double Strontium { get; set; }

        public double Sulfur { get; set; }

        public double Cobalt { get; set; }

        public double Iron { get; set; }

        public double Germanium { get; set; }

        public double Rubidium { get; set; }

        public double Zirconium { get; set; }
    }
}
