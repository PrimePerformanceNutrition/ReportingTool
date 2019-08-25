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

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("Horses");
                });

            modelBuilder.Entity("PpnReporting.BusinessLogic.Models.Lab", b =>
                {
                    b.Property<Guid>("LabId");

                    b.Property<double>("Boron");

                    b.Property<double>("Calcium");

                    b.Property<double>("Chromium");

                    b.Property<double>("Cobalt");

                    b.Property<double>("Copper");

                    b.Property<double>("Germanium");

                    b.Property<Guid?>("HorseId");

                    b.Property<double>("Iodine");

                    b.Property<double>("Iron");

                    b.Property<DateTime>("LabDate");

                    b.Property<double>("Lithium");

                    b.Property<double>("Magnesium");

                    b.Property<double>("Manganese");

                    b.Property<double>("Molybdemnum");

                    b.Property<double>("Phosphorus");

                    b.Property<double>("Potassium");

                    b.Property<double>("Rubidium");

                    b.Property<double>("Selenium");

                    b.Property<double>("Sodium");

                    b.Property<double>("Strontium");

                    b.Property<double>("Sulfur");

                    b.Property<double>("Vanadium");

                    b.Property<double>("Zinc");

                    b.Property<double>("Zirconium");

                    b.HasKey("LabId");

                    b.HasIndex("HorseId");

                    b.ToTable("Labs");
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
