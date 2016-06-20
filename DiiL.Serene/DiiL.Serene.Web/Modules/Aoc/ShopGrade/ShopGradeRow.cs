
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

    [ConnectionKey("Aoc"), DisplayName("ShopGrade"), InstanceName("ShopGrade"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    //[LookupScript("Aoc.ShopGrade")]
    public sealed class ShopGradeRow : Row, IIdRow, INameRow,IMultiTenantRow
    {
        [DisplayName("Id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Parent"), Column("parentId"), ForeignKey("ShopGrade", "Id"), LeftJoin("sg"), DefaultValue(0)]
        [LookupEditor("Aoc.ShopGrade", CascadeField = "TenantId", CascadeFrom = "TenantId", InplaceAdd = true)]
        public Int32? ParentId
        {
            get { return Fields.ParentId[this]; }
            set { Fields.ParentId[this] = value; }
        }

        [DisplayName("Parent"), Expression("sg.Name")]
        public String GradeName
        {
            get { return Fields.GradeName[this]; }
            set { Fields.GradeName[this] = value; }
        }

        [DisplayName("Name"), Column("name"), Size(50), NotNull, QuickSearch]
        public String Name
        {
            get { return Fields.Name[this]; }
            set { Fields.Name[this] = value; }
        }

        [DisplayName("Max Sn Number"), Column("maxSNNumber")]
        public Int32? MaxSnNumber
        {
            get { return Fields.MaxSnNumber[this]; }
            set { Fields.MaxSnNumber[this] = value; }
        }

        [DisplayName("Max Street Shop Money"), Column("maxStreetShopMoney"), Size(18), Scale(2)]
        public Decimal? MaxStreetShopMoney
        {
            get { return Fields.MaxStreetShopMoney[this]; }
            set { Fields.MaxStreetShopMoney[this] = value; }
        }

        [DisplayName("Max Free Trial Count"), Column("maxFreeTrialCount"), NotNull]
        public Int32? MaxFreeTrialCount
        {
            get { return Fields.MaxFreeTrialCount[this]; }
            set { Fields.MaxFreeTrialCount[this] = value; }
        }

        [DisplayName("Status"), Column("status"),DefaultValue(CommonStatus.启用)]
        public CommonStatus? Status
        {
            get { return (CommonStatus?)Fields.Status[this]; }
            set { Fields.Status[this] = (Int32?)value; }
        }


        [DisplayName("Special Amount"), Column("specialAmount"), NotNull]
        public Int32? SpecialAmount
        {
            get { return Fields.SpecialAmount[this]; }
            set { Fields.SpecialAmount[this] = value; }
        }

        [DisplayName("Order"), Column("order"), NotNull, SortOrder(1)]
        public Int32? Order
        {
            get { return Fields.Order[this]; }
            set { Fields.Order[this] = value; }
        }

        [DisplayName("Tenant"), NotNull, ForeignKey("[dbo].Tenants", "Id"), LeftJoin("jTenant")]
        [LookupEditor("Aoc.Tenants"), LookupInclude]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
        }

        [DisplayName("Tenant Name"), Expression("jTenant.Name")]
        public String TenantName
        {
            get { return Fields.TenantName[this]; }
            set { Fields.TenantName[this] = value; }
        }
        public Int32Field TenantIdField
        {
            get { return Fields.TenantId; }
        }


        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Name; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public ShopGradeRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public Int32Field ParentId;
            public StringField Name;
            public Int32Field MaxSnNumber;
            public DecimalField MaxStreetShopMoney;
            public Int32Field MaxFreeTrialCount;
            public Int32Field Status;
            public Int32Field SpecialAmount;
            public Int32Field Order;
            public StringField GradeName;
            public Int32Field TenantId;
            public StringField TenantName;

            public RowFields()
                : base("[dbo].[ShopGrade]")
            {
                LocalTextPrefix = "Aoc.ShopGrade";
            }
        }
    }
}