
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

    [ConnectionKey("Aoc"), DisplayName("AgreementTemplate"), InstanceName("AgreementTemplate"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class AgreementTemplateRow : Row, IIdRow, INameRow
    {
        [DisplayName("Agreement Template Id"), Column("agreementTemplateId"), Identity]
        public Int32? AgreementTemplateId
        {
            get { return Fields.AgreementTemplateId[this]; }
            set { Fields.AgreementTemplateId[this] = value; }
        }

        //[DisplayName("Agreement Type"), Column("agreementType"), NotNull]
        //public Int32? AgreementType
        //{
        //    get { return Fields.AgreementType[this]; }
        //    set { Fields.AgreementType[this] = value; }
        //}

        [DisplayName("Agreement Type"), NotNull, DefaultValue(AgreementTypes.三方协议)]
        public AgreementTypes? AgreementType
        {
            get { return (AgreementTypes?)Fields.AgreementType[this]; }
            set { Fields.AgreementType[this] = (Int32?)value; }
        }

        [DisplayName("Shop Grade"), Column("shopGradId"), NotNull, ForeignKey("[dbo].[ShopGrade]", "Id"), LeftJoin("jShopGrad"), TextualField("ShopGradName")]
        [LookupEditor(typeof(ShopGradeRow), InplaceAdd = true)]
        public Int32? ShopGradId
        {
            get { return Fields.ShopGradId[this]; }
            set { Fields.ShopGradId[this] = value; }
        }

        [DisplayName("店面等级"), Expression("jShopGrad.Name"), QuickSearch, EditLink]
        public String GradeName
        {
            get { return Fields.GradeName[this]; }
            set { Fields.GradeName[this] = value; }
        }

        [DisplayName("Approve Flow"), Column("approveFlow"), Size(50), NotNull]
        public String ApproveFlow
        {
            get { return Fields.ApproveFlow[this]; }
            set { Fields.ApproveFlow[this] = value; }
        }

        [DisplayName("Template Content"), Column("templateContent"), NotNull]
        public String TemplateContent
        {
            get { return Fields.TemplateContent[this]; }
            set { Fields.TemplateContent[this] = value; }
        }

        [DisplayName("Book Marks"), Column("bookMarks"), Size(1024), NotNull]
        public String BookMarks
        {
            get { return Fields.BookMarks[this]; }
            set { Fields.BookMarks[this] = value; }
        }

        [DisplayName("Year Of Date"), Column("yearOfDate"), NotNull]
        public Int32? YearOfDate
        {
            get { return Fields.YearOfDate[this]; }
            set { Fields.YearOfDate[this] = value; }
        }

        [DisplayName("Is Validate"), Column("isValidate"), NotNull]
        public Boolean? IsValidate
        {
            get { return Fields.IsValidate[this]; }
            set { Fields.IsValidate[this] = value; }
        }

        [DisplayName("Expired Time"), Column("expiredTime")]
        public DateTime? ExpiredTime
        {
            get { return Fields.ExpiredTime[this]; }
            set { Fields.ExpiredTime[this] = value; }
        }

        [DisplayName("Type"), Column("type"), Size(8)]
        public String Type
        {
            get { return Fields.Type[this]; }
            set { Fields.Type[this] = value; }
        }

        [DisplayName("Shop Grad Parent Id"), Expression("jShopGrad.[parentId]")]
        public Int32? ShopGradParentId
        {
            get { return Fields.ShopGradParentId[this]; }
            set { Fields.ShopGradParentId[this] = value; }
        }

        [DisplayName("Shop Grad Name"), Expression("jShopGrad.[name]")]
        public String ShopGradName
        {
            get { return Fields.ShopGradName[this]; }
            set { Fields.ShopGradName[this] = value; }
        }

        [DisplayName("Shop Grad Max Sn Number"), Expression("jShopGrad.[maxSNNumber]")]
        public Int32? ShopGradMaxSnNumber
        {
            get { return Fields.ShopGradMaxSnNumber[this]; }
            set { Fields.ShopGradMaxSnNumber[this] = value; }
        }

        [DisplayName("Shop Grad Max Street Shop Money"), Expression("jShopGrad.[maxStreetShopMoney]")]
        public Decimal? ShopGradMaxStreetShopMoney
        {
            get { return Fields.ShopGradMaxStreetShopMoney[this]; }
            set { Fields.ShopGradMaxStreetShopMoney[this] = value; }
        }

        [DisplayName("Shop Grad Max Free Trial Count"), Expression("jShopGrad.[maxFreeTrialCount]")]
        public Int32? ShopGradMaxFreeTrialCount
        {
            get { return Fields.ShopGradMaxFreeTrialCount[this]; }
            set { Fields.ShopGradMaxFreeTrialCount[this] = value; }
        }

        [DisplayName("Shop Grad Status"), Expression("jShopGrad.[status]")]
        public String ShopGradStatus
        {
            get { return Fields.ShopGradStatus[this]; }
            set { Fields.ShopGradStatus[this] = value; }
        }

        [DisplayName("Shop Grad Category"), Expression("jShopGrad.[category]")]
        public Int32? ShopGradCategory
        {
            get { return Fields.ShopGradCategory[this]; }
            set { Fields.ShopGradCategory[this] = value; }
        }

        [DisplayName("Shop Grad Special Amount"), Expression("jShopGrad.[specialAmount]")]
        public Int32? ShopGradSpecialAmount
        {
            get { return Fields.ShopGradSpecialAmount[this]; }
            set { Fields.ShopGradSpecialAmount[this] = value; }
        }

        [DisplayName("Shop Grad Order"), Expression("jShopGrad.[order]")]
        public Int32? ShopGradOrder
        {
            get { return Fields.ShopGradOrder[this]; }
            set { Fields.ShopGradOrder[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.AgreementTemplateId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.ApproveFlow; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public AgreementTemplateRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field AgreementTemplateId;
            public Int32Field AgreementType;
            public Int32Field ShopGradId;
            public StringField ApproveFlow;
            public StringField TemplateContent;
            public StringField BookMarks;
            public Int32Field YearOfDate;
            public BooleanField IsValidate;
            public DateTimeField ExpiredTime;
            public StringField Type;

            public Int32Field ShopGradParentId;
            public StringField ShopGradName;
            public Int32Field ShopGradMaxSnNumber;
            public DecimalField ShopGradMaxStreetShopMoney;
            public Int32Field ShopGradMaxFreeTrialCount;
            public StringField ShopGradStatus;
            public Int32Field ShopGradCategory;
            public Int32Field ShopGradSpecialAmount;
            public Int32Field ShopGradOrder;

            public StringField GradeName;


            public RowFields()
                : base("[dbo].[AgreementTemplate]")
            {
                LocalTextPrefix = "Aoc.AgreementTemplate";
            }
        }
    }
}