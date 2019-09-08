using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using PpnReporting.BusinessLogic;
using PpnReporting.BusinessLogic.Repos;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace PpnReporting
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        public IServiceProvider ServiceProvider { get; private set; }
        public IConfiguration Configuration { get; private set; }
        

        protected override void OnStartup(StartupEventArgs e)
        {
            var environment = Environment.GetEnvironmentVariable("ASPNETCORE_ENVIRONMENT");

            var builder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", false, true)
                .AddJsonFile($"appsettings.{ environment }.json", true, true);

            Configuration = builder.Build();

            var serviceCollection = new ServiceCollection();
            ConfigureServices(serviceCollection);

            ServiceProvider = serviceCollection.BuildServiceProvider();

            // Only run once to seed
            //var planter = new Planter(ServiceProvider.GetRequiredService<PpnContext>());
            //planter.Seed();

            var mainWindow = ServiceProvider.GetRequiredService<MainWindow>();
            mainWindow.Show();

            base.OnStartup(e);
        }        

        private void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<PpnContext>(options =>
                options.UseSqlServer(
                    Configuration.GetConnectionString("PrimePerformanceNutritionConnection")));

            services.AddTransient(typeof(MainWindow));
            services.AddTransient(typeof(LabListing));            
            services.AddTransient<IPpnRepo, PpnRepo>();
        }

    }
}
