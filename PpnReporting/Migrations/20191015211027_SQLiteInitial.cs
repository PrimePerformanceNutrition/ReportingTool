using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class SQLiteInitial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Horses",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    Name = table.Column<string>(nullable: true),
                    Age = table.Column<int>(nullable: false),
                    Breed = table.Column<string>(nullable: true),
                    Sex = table.Column<string>(nullable: true),
                    Discipline = table.Column<string>(nullable: true),
                    CustomerName = table.Column<string>(nullable: true),
                    Address = table.Column<string>(nullable: true),
                    PhoneNumber = table.Column<string>(nullable: true),
                    EmailAddress = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Horses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "NutrientBulletPoints",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    NutrientName = table.Column<string>(nullable: true),
                    BulletPoint = table.Column<string>(nullable: true),
                    Range = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_NutrientBulletPoints", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Labs",
                columns: table => new
                {
                    LabId = table.Column<int>(nullable: false)
                        .Annotation("Sqlite:Autoincrement", true),
                    LabNumber = table.Column<string>(nullable: true),
                    SampleId = table.Column<string>(nullable: true),
                    HorseId = table.Column<int>(nullable: true),
                    LabDate = table.Column<DateTime>(nullable: false),
                    Calcium = table.Column<double>(nullable: false),
                    Magnesium = table.Column<double>(nullable: false),
                    Sodium = table.Column<double>(nullable: false),
                    Potassium = table.Column<double>(nullable: false),
                    Copper = table.Column<double>(nullable: false),
                    Zinc = table.Column<double>(nullable: false),
                    Manganese = table.Column<double>(nullable: false),
                    Chromium = table.Column<double>(nullable: false),
                    Vanadium = table.Column<double>(nullable: false),
                    Molybdenum = table.Column<double>(nullable: false),
                    Boron = table.Column<double>(nullable: false),
                    Iodine = table.Column<double>(nullable: false),
                    Lithium = table.Column<double>(nullable: false),
                    Phosphorus = table.Column<double>(nullable: false),
                    Selenium = table.Column<double>(nullable: false),
                    Strontium = table.Column<double>(nullable: false),
                    Sulfur = table.Column<double>(nullable: false),
                    Cobalt = table.Column<double>(nullable: false),
                    Iron = table.Column<double>(nullable: false),
                    Germanium = table.Column<double>(nullable: false),
                    Rubidium = table.Column<double>(nullable: false),
                    Zirconium = table.Column<double>(nullable: false),
                    Aluminum = table.Column<double>(nullable: false),
                    Antimony = table.Column<double>(nullable: false),
                    Arsenic = table.Column<double>(nullable: false),
                    Barium = table.Column<double>(nullable: false),
                    Beryllium = table.Column<double>(nullable: false),
                    Bismuth = table.Column<double>(nullable: false),
                    Cadmium = table.Column<double>(nullable: false),
                    Lead = table.Column<double>(nullable: false),
                    Mercury = table.Column<double>(nullable: false),
                    Platinum = table.Column<double>(nullable: false),
                    Thallium = table.Column<double>(nullable: false),
                    Thorium = table.Column<double>(nullable: false),
                    Uranium = table.Column<double>(nullable: false),
                    Nickel = table.Column<double>(nullable: false),
                    Silver = table.Column<double>(nullable: false),
                    Tin = table.Column<double>(nullable: false),
                    Titanium = table.Column<double>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Labs", x => x.LabId);
                    table.ForeignKey(
                        name: "FK_Labs_Horses_HorseId",
                        column: x => x.HorseId,
                        principalTable: "Horses",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Labs_HorseId",
                table: "Labs",
                column: "HorseId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Labs");

            migrationBuilder.DropTable(
                name: "NutrientBulletPoints");

            migrationBuilder.DropTable(
                name: "Horses");
        }
    }
}
