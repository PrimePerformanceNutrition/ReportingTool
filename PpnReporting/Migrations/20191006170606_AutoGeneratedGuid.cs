﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace PpnReporting.Migrations
{
    public partial class AutoGeneratedGuid : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<Guid>(
                name: "LabId",
                table: "Labs",
                nullable: false,
                defaultValueSql: "NEWSEQUENTIALID()",
                oldClrType: typeof(Guid));

            migrationBuilder.AlterColumn<Guid>(
                name: "Id",
                table: "Horses",
                nullable: false,
                defaultValueSql: "NEWSEQUENTIALID()",
                oldClrType: typeof(Guid));
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<Guid>(
                name: "LabId",
                table: "Labs",
                nullable: false,
                oldClrType: typeof(Guid),
                oldDefaultValueSql: "NEWSEQUENTIALID()");

            migrationBuilder.AlterColumn<Guid>(
                name: "Id",
                table: "Horses",
                nullable: false,
                oldClrType: typeof(Guid),
                oldDefaultValueSql: "NEWSEQUENTIALID()");
        }
    }
}
