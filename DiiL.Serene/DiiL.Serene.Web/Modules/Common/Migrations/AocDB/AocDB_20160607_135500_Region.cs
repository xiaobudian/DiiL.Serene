using FluentMigrator;
using System;

namespace DiiL.Serene.Migrations.AocDB
{
    [Migration(20160607135500)]
    public class AocDB_20160607_135500_Region : AutoReversingMigration
    {
        public override void Up()
        {
            Create.Table("Region")
                .WithColumn("Id").AsInt32().Identity().PrimaryKey().NotNullable()
                .WithColumn("Name").AsString(200).NotNullable()
                .WithColumn("CreateTime").AsDateTime().Nullable().WithDefaultValue(DateTime.Now);

            Insert.IntoTable("Region").Row(new
            {
                Name = "华北",
                CreateTime = DateTime.Now
            });

            Alter.Table("S_Province")
                .AddColumn("RegionId").AsInt32().ForeignKey("Region", "Id")
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("ManagerAccount")
                .AddColumn("RegionId").AsInt32().ForeignKey("Region", "Id")
                    .NotNullable().WithDefaultValue(1)
                .AddColumn("ProvinceId").AsInt32().ForeignKey("S_Province", "provinceId");
        }
    }
}