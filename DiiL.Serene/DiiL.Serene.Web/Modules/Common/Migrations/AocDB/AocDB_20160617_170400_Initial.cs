using FluentMigrator;

namespace DiiL.Serene.Migrations.AocDB
{
    [Migration(20160617170400)]
    public class AocDB_20160617_170400_Initial : Migration
    {
        public override void Up()
        {
            IfDatabase("sqlserver")
                .Execute.EmbeddedScript("DiiL.Serene.Modules.Common.Migrations.AocDB.AocDBScript_SqlServer.sql");

            //IfDatabase("postgres")
            //    .Execute.EmbeddedScript("DiiL.AocIP.Modules.Common.Migrations.NorthwindDB.NorthwindDBScript_Postgres.sql");

            //IfDatabase("postgres")
            //    .Execute.EmbeddedScript("DiiL.AocIP.Modules.Common.Migrations.NorthwindDB.NorthwindDBScript_PostgresData.sql");

            //IfDatabase("mysql")
            //    .Execute.EmbeddedScript("DiiL.AocIP.Modules.Common.Migrations.NorthwindDB.NorthwindDBScript_MySql.sql");

            //IfDatabase("sqlserver", "postgres")
            //    .Alter.Table("Customers")
            //        .AddColumn("ID").AsInt32().Identity().NotNullable();

            //IfDatabase("sqlserver", "postgres")
            //    .Alter.Table("Territories")
            //        .AddColumn("ID").AsInt32().Identity().NotNullable();

            //Alter.Table("Products")
            //    .AddColumn("ProductImage").AsString(100).Nullable();
        }

        public override void Down()
        {
        }
    }
}