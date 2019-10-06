using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class LabHorseDetails : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "SampleId",
                table: "Labs",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Address",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "Age",
                table: "Horses",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Breed",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "CustomerName",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Discipline",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "EmailAddress",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PhoneNumber",
                table: "Horses",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Sex",
                table: "Horses",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "SampleId",
                table: "Labs");

            migrationBuilder.DropColumn(
                name: "Address",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "Age",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "Breed",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "CustomerName",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "Discipline",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "EmailAddress",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "PhoneNumber",
                table: "Horses");

            migrationBuilder.DropColumn(
                name: "Sex",
                table: "Horses");
        }
    }
}
