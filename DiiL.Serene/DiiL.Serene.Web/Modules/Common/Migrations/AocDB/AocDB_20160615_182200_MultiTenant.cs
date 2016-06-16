using FluentMigrator;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiiL.Serene.Migrations.AocDB
{

    [Migration(20160615182200)]
    public class AocDB_20160615_182200_MultiTenant : AutoReversingMigration
    {
        public override void Up()
        {
            Alter.Table("Agreement")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("AgreementTemplate")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ExchangeObject")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);


            Alter.Table("FreeTrialList")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("FreeTrialPolicy")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ManagerAccount")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("ProductExProperty")
               .AddColumn("TenantId").AsInt32()
                   .NotNullable().WithDefaultValue(1);
            Alter.Table("ProductForFreeTrail")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ProductSerial")
                .AddColumn("TenantId").AsInt32().ForeignKey("[dbo].Tenants", "TenantId")
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("ProductVersion")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("RewardMonthyStatistical")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ScoreExchangeRecord")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("SEMRewardPolicy")
               .AddColumn("TenantId").AsInt32()
                   .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopGrade")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopReviewItem")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("ShopReviewRecord")
               .AddColumn("TenantId").AsInt32()
                   .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopReviewRecordDetail")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopScore")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("ShopSeller")
               .AddColumn("TenantId").AsInt32()
                   .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopSellerRole")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("ShopSeriesNumber")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("SN")
              .AddColumn("TenantId").AsInt32()
                  .NotNullable().WithDefaultValue(1);
            Alter.Table("SNComplain")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("SNImport")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("SNRecycle")
               .AddColumn("TenantId").AsInt32()
                   .NotNullable().WithDefaultValue(1);
            Alter.Table("SNRecycleDetail")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);
            Alter.Table("SpecialRewardPolicy")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

            Alter.Table("SpecialRewardPolicyDetail")
             .AddColumn("TenantId").AsInt32()
                 .NotNullable().WithDefaultValue(1);
            Alter.Table("UserAccount")
                .AddColumn("TenantId").AsInt32()
                    .NotNullable().WithDefaultValue(1);

        }
    }
}