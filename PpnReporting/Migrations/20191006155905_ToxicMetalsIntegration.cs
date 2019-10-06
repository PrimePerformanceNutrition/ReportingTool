using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class ToxicMetalsIntegration : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<double>(
                name: "Aluminum",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Antimony",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Arsenic",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Barium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Beryllium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Bismuth",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Cadmium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Lead",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Mercury",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Nickel",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Plantinum",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Silver",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Thallium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Thorium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Tin",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Titanium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "Uranium",
                table: "Labs",
                nullable: false,
                defaultValue: 0.0);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Aluminum",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Antimony",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Arsenic",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Barium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Beryllium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Bismuth",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Cadmium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Lead",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Mercury",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Nickel",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Plantinum",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Silver",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Thallium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Thorium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Tin",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Titanium",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Uranium",
                table: "Labs");
        }
    }
}
