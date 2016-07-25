
namespace DiiL.Serene.Aoc.Entities
{
    using Newtonsoft.Json;
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;
    using System.IO;

    [ConnectionKey("Aoc"), DisplayName("SEMRewardPolicy"), InstanceName("SEMRewardPolicy"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SemRewardPolicyRow : Row, IIdRow, INameRow
    {
        [DisplayName("Policy Id"), Column("policyId"), Identity]
        public Int32? PolicyId
        {
            get { return Fields.PolicyId[this]; }
            set { Fields.PolicyId[this] = value; }
        }

        [DisplayName("Shop Grade"), Column("shopGradeId"), NotNull, ForeignKey("[dbo].[ShopGrade]", "Id"), LeftJoin("jShopGrade"), TextualField("ShopGradeName")]
        [LookupEditor("Aoc.ShopGrade")]
        public Int32? ShopGradeId
        {
            get { return Fields.ShopGradeId[this]; }
            set { Fields.ShopGradeId[this] = value; }
        }

        [DisplayName("Total Amount"), Column("totalAmount"), NotNull]
        public Int32? TotalAmount
        {
            get { return Fields.TotalAmount[this]; }
            set { Fields.TotalAmount[this] = value; }
        }

        [DisplayName("Status"), Column("status"), NotNull]
        public Int16? Status
        {
            get { return Fields.Status[this]; }
            set { Fields.Status[this] = value; }
        }

        [DisplayName("Edit Time"), Column("editTime"), NotNull]
        public DateTime? EditTime
        {
            get { return Fields.EditTime[this]; }
            set { Fields.EditTime[this] = value; }
        }

        [DisplayName("Begintime"), Column("begintime"), NotNull]
        public DateTime? Begintime
        {
            get { return Fields.Begintime[this]; }
            set { Fields.Begintime[this] = value; }
        }

        [DisplayName("Endtime"), Column("endtime"), NotNull]
        public DateTime? Endtime
        {
            get { return Fields.Endtime[this]; }
            set { Fields.Endtime[this] = value; }
        }

        [DisplayName("Amount"), Column("amount"), Size(150), NotNull, QuickSearch]
        public String Amount
        {
            get { return Fields.Amount[this]; }
            set { Fields.Amount[this] = value; }
        }

        [DisplayName("Max Score"), Column("maxScore"), NotNull]
        public Int32? MaxScore
        {
            get { return Fields.MaxScore[this]; }
            set { Fields.MaxScore[this] = value; }
        }

        [DisplayName("Not Street Reward"), Column("notStreetReward"), Size(8), Scale(2), NotNull]
        public Decimal? NotStreetReward
        {
            get { return Fields.NotStreetReward[this]; }
            set { Fields.NotStreetReward[this] = value; }
        }

        [DisplayName("Street Reward"), Column("streetReward"), Size(8), Scale(2), NotNull]
        public Decimal? StreetReward
        {
            get { return Fields.StreetReward[this]; }
            set { Fields.StreetReward[this] = value; }
        }

        [DisplayName("Tenant"), NotNull, ForeignKey("[dbo].[Tenants]", "Id"), LeftJoin("jTenant"), TextualField("TenantName")]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        [DisplayName("Shop Grade Parent Id"), Expression("jShopGrade.[parentId]")]
        public Int32? ShopGradeParentId
        {
            get { return Fields.ShopGradeParentId[this]; }
            set { Fields.ShopGradeParentId[this] = value; }
        }

        [DisplayName("Shop Grade Name"), Expression("jShopGrade.[name]")]
        public String ShopGradeName
        {
            get { return Fields.ShopGradeName[this]; }
            set { Fields.ShopGradeName[this] = value; }
        }

        [DisplayName("Shop Grade Max Sn Number"), Expression("jShopGrade.[maxSNNumber]")]
        public Int32? ShopGradeMaxSnNumber
        {
            get { return Fields.ShopGradeMaxSnNumber[this]; }
            set { Fields.ShopGradeMaxSnNumber[this] = value; }
        }

        [DisplayName("Shop Grade Max Street Shop Money"), Expression("jShopGrade.[maxStreetShopMoney]")]
        public Decimal? ShopGradeMaxStreetShopMoney
        {
            get { return Fields.ShopGradeMaxStreetShopMoney[this]; }
            set { Fields.ShopGradeMaxStreetShopMoney[this] = value; }
        }

        [DisplayName("Shop Grade Max Free Trial Count"), Expression("jShopGrade.[maxFreeTrialCount]")]
        public Int32? ShopGradeMaxFreeTrialCount
        {
            get { return Fields.ShopGradeMaxFreeTrialCount[this]; }
            set { Fields.ShopGradeMaxFreeTrialCount[this] = value; }
        }

        [DisplayName("Shop Grade Status"), Expression("jShopGrade.[status]")]
        public Int32? ShopGradeStatus
        {
            get { return Fields.ShopGradeStatus[this]; }
            set { Fields.ShopGradeStatus[this] = value; }
        }

        [DisplayName("Shop Grade Special Amount"), Expression("jShopGrade.[specialAmount]")]
        public Int32? ShopGradeSpecialAmount
        {
            get { return Fields.ShopGradeSpecialAmount[this]; }
            set { Fields.ShopGradeSpecialAmount[this] = value; }
        }

        [DisplayName("Shop Grade Order"), Expression("jShopGrade.[order]")]
        public Int32? ShopGradeOrder
        {
            get { return Fields.ShopGradeOrder[this]; }
            set { Fields.ShopGradeOrder[this] = value; }
        }

        [DisplayName("Shop Grade Tenant Id"), Expression("jShopGrade.[TenantId]")]
        public Int32? ShopGradeTenantId
        {
            get { return Fields.ShopGradeTenantId[this]; }
            set { Fields.ShopGradeTenantId[this] = value; }
        }

        [DisplayName("Tenant Name"), Expression("jTenant.[Name]")]
        public String TenantName
        {
            get { return Fields.TenantName[this]; }
            set { Fields.TenantName[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.PolicyId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Amount; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SemRewardPolicyRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field PolicyId;
            public Int32Field ShopGradeId;
            public Int32Field TotalAmount;
            public Int16Field Status;
            public DateTimeField EditTime;
            public DateTimeField Begintime;
            public DateTimeField Endtime;
            public StringField Amount;
            public Int32Field MaxScore;
            public DecimalField NotStreetReward;
            public DecimalField StreetReward;
            public Int32Field TenantId;

            public Int32Field ShopGradeParentId;
            public StringField ShopGradeName;
            public Int32Field ShopGradeMaxSnNumber;
            public DecimalField ShopGradeMaxStreetShopMoney;
            public Int32Field ShopGradeMaxFreeTrialCount;
            public Int32Field ShopGradeStatus;
            public Int32Field ShopGradeSpecialAmount;
            public Int32Field ShopGradeOrder;
            public Int32Field ShopGradeTenantId;

            public StringField TenantName;

            public RowFields()
                : base("[dbo].[SEMRewardPolicy]")
            {
                LocalTextPrefix = "Aoc.SemRewardPolicy";
            }
        }
    }
}