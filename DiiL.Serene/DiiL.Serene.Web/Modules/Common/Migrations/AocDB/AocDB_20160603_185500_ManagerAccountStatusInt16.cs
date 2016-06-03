using FluentMigrator;

namespace DiiL.Serene.Migrations.AocDB
{
    [Migration(20160603185500)]
    public class AocDB_20160603_185500_ManagerAccountStatusInt16 : AutoReversingMigration
    {
        public override void Up()
        {
            Alter.Table("ManagerAccount").AlterColumn("Status").AsInt16().NotNullable();
        }


    }
}