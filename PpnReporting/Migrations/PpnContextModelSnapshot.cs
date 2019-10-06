﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using PpnReporting.BusinessLogic;

namespace PpnReporting.Migrations
{
    [DbContext(typeof(PpnContext))]
    partial class PpnContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.2.6-servicing-10079")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("PpnReporting.BusinessLogic.Models.Horse", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Address");

                    b.Property<int>("Age");

                    b.Property<string>("Breed");

                    b.Property<string>("CustomerName");

                    b.Property<string>("Discipline");

                    b.Property<string>("EmailAddress");

                    b.Property<string>("Name");

                    b.Property<string>("PhoneNumber");

                    b.Property<string>("Sex");

                    b.HasKey("Id");

                    b.ToTable("Horses");
                });

            modelBuilder.Entity("PpnReporting.BusinessLogic.Models.Lab", b =>
                {
                    b.Property<Guid>("LabId");

                    b.Property<double>("Aluminum");

                    b.Property<double>("Antimony");

                    b.Property<double>("Arsenic");

                    b.Property<double>("Barium");

                    b.Property<double>("Beryllium");

                    b.Property<double>("Bismuth");

                    b.Property<double>("Boron");

                    b.Property<double>("Cadmium");

                    b.Property<double>("Calcium");

                    b.Property<double>("Chromium");

                    b.Property<double>("Cobalt");

                    b.Property<double>("Copper");

                    b.Property<double>("Germanium");

                    b.Property<Guid?>("HorseId");

                    b.Property<double>("Iodine");

                    b.Property<double>("Iron");

                    b.Property<DateTime>("LabDate");

                    b.Property<double>("Lead");

                    b.Property<double>("Lithium");

                    b.Property<double>("Magnesium");

                    b.Property<double>("Manganese");

                    b.Property<double>("Mercury");

                    b.Property<double>("Molybdemnum");

                    b.Property<double>("Nickel");

                    b.Property<double>("Phosphorus");

                    b.Property<double>("Plantinum");

                    b.Property<double>("Potassium");

                    b.Property<double>("Rubidium");

                    b.Property<string>("SampleId");

                    b.Property<double>("Selenium");

                    b.Property<double>("Silver");

                    b.Property<double>("Sodium");

                    b.Property<double>("Strontium");

                    b.Property<double>("Sulfur");

                    b.Property<double>("Thallium");

                    b.Property<double>("Thorium");

                    b.Property<double>("Tin");

                    b.Property<double>("Titanium");

                    b.Property<double>("Uranium");

                    b.Property<double>("Vanadium");

                    b.Property<double>("Zinc");

                    b.Property<double>("Zirconium");

                    b.HasKey("LabId");

                    b.HasIndex("HorseId");

                    b.ToTable("Labs");
                });

            modelBuilder.Entity("PpnReporting.BusinessLogic.Models.NutrientBulletPoint", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("BulletPoint");

                    b.Property<string>("NutrientName");

                    b.Property<string>("Range");

                    b.HasKey("Id");

                    b.ToTable("NutrientBulletPoints");
                });

            modelBuilder.Entity("PpnReporting.BusinessLogic.Models.Lab", b =>
                {
                    b.HasOne("PpnReporting.BusinessLogic.Models.Horse", "Horse")
                        .WithMany()
                        .HasForeignKey("HorseId");
                });
#pragma warning restore 612, 618
        }
    }
}
