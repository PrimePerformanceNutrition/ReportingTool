using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class PlatinumSpellingCorrection : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Plantinum",
                table: "Labs");

            migrationBuilder.AddColumn<double>(
                name: "Platinum",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Platinum",
                table: "Labs");

            migrationBuilder.AddColumn<double>(
                name: "Plantinum",
                table: "Labs",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }
    }
}
