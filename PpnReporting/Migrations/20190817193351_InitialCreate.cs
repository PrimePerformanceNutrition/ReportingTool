using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Horses",
                columns: table => new
                {
                    Id = table.Column<Guid>(nullable: false),
                    Name = table.Column<string>(nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Horses", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Labs",
                columns: table => new
                {
                    LabId = table.Column<Guid>(nullable: false),
                    HorseId = table.Column<Guid>(nullable: true),
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
                    Molybdemnum = table.Column<double>(nullable: false),
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
                    Zirconium = table.Column<double>(nullable: false)
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
                name: "Horses");
        }
    }
}
