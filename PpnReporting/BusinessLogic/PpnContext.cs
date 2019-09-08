using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Design;
using Microsoft.Extensions.Configuration;
using PpnReporting.BusinessLogic.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace PpnReporting.BusinessLogic
{
    public class PpnContext : DbContext
    {
        public PpnContext(DbContextOptions<PpnContext> options) : base(options) { }

        public DbSet<Horse> Horses { get; set; }
        public DbSet<Lab> Labs { get; set; }
        public DbSet<NutrientBulletPoint> NutrientBulletPoints { get; set; }
    }

    public class PpnContextFactory : IDesignTimeDbContextFactory<PpnContext>
    {
        public PpnContext CreateDbContext(string[] args)
        {
            var environment = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");

            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", false, true)
                .AddJsonFile($"appsettings.{ environment }.json", true, true);

            var configuration = builder.Build();

            var optionsBuilder = new DbContextOptionsBuilder<PpnContext>()
                .UseSqlServer(
                    configuration.GetConnectionString("PrimePerformanceNutritionConnection"));

            return new PpnContext(optionsBuilder.Options);
        }
    }
}
