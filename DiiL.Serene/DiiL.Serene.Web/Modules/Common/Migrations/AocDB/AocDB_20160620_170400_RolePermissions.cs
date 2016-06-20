using FluentMigrator;

namespace DiiL.Serene.Migrations.AocDB
{
    [Migration(20160620170400)]
    public class AocDB_20160620_170400_RolePermissions : AutoReversingMigration
    {
        public override void Up()
        {
            Create.Table("RolePermissions")
               .WithColumn("RolePermissionId").AsInt64().Identity().PrimaryKey().NotNullable()
               .WithColumn("RoleId").AsInt32().NotNullable()
               .WithColumn("PermissionKey").AsString(100).NotNullable();

            Create.ForeignKey("FK_RolePermissions_RoleId")
                .FromTable("RolePermissions")
                .ForeignColumn("RoleId")
                .ToTable("Roles")
                .PrimaryColumn("RoleId");

            Create.Index("UQ_RolePermissions_RoleId_PermissionKey")
                .OnTable("RolePermissions")
                .OnColumn("RoleId").Ascending()
                .OnColumn("PermissionKey").Ascending()
                .WithOptions().Unique();
        }
    }
}