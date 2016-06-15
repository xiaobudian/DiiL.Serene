using FluentMigrator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiiL.Serene.Migrations.AocDB
{

    [Migration(20160615092200)]
    public class AocDB_20160615_092200_MultiTenant : AutoReversingMigration
    {
        public override void Up()
        {
            Create.Table("Tenants")
                .WithColumn("TenantId").AsInt32()
                    .Identity().PrimaryKey().NotNullable()
                .WithColumn("TenantName").AsString(100)
                    .NotNullable();

            Insert.IntoTable("Tenants")
                .Row(new
                {
                    TenantName = "NULL Tenant"
                });
            Insert.IntoTable("Tenants")
                .Row(new
                {
                    TenantName = "MNT Tenant"
                });
            Insert.IntoTable("Tenants")
                .Row(new
                {
                    TenantName = "TV Tenant"
                });
            Insert.IntoTable("Tenants")
                .Row(new
                {
                    TenantName = "SI Tenant"
                });
            Alter.Table("Users")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("Roles")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            //Alter.Table("Languages")
            //    .AddColumn("TenantId").AsInt32()
            //        .NotNullable().WithDefaultValue(1);

            Alter.Table("ProductLine")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
        }
    }
}