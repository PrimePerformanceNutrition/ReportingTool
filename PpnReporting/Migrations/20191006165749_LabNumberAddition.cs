using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class LabNumberAddition : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<Guid>(
                name: "LabId",
                table: "Labs",
                nullable: false,
                oldClrType: typeof(string));

            migrationBuilder.AddColumn<string>(
                name: "LabNumber",
                table: "Labs",
                nullable: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LabNumber",
                table: "Labs");

            migrationBuilder.AlterColumn<string>(
                name: "LabId",
                table: "Labs",
                nullable: false,
                oldClrType: typeof(Guid));
        }
    }
}
