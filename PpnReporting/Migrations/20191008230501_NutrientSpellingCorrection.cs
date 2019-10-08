using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class NutrientSpellingCorrection : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Molybdemnum",
                table: "Labs",
                newName: "Molybdenum");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "Molybdenum",
                table: "Labs",
                newName: "Molybdemnum");
        }
    }
}
