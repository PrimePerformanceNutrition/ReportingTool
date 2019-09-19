using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class NutrientBulletPointRangeFieldAddition : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Range",
                table: "NutrientBulletPoints",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Range",
                table: "NutrientBulletPoints");
        }
    }
}
