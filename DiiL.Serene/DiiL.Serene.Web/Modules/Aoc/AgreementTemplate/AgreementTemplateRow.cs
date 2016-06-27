
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
        [DisplayName("Id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Agreement Type"), Column("agreementType"), NotNull,ClientSide, DefaultValue(AgreementTypes.三方协议)]
        public AgreementTypes? AgreementType
        {
            get { return (AgreementTypes?)Fields.AgreementType[this]; }
            set { Fields.AgreementType[this] = (Int32?)value; }
        }

        [DisplayName("Shop Grade"), Column("shopGradeId"), NotNull,
            ForeignKey("[dbo].[ShopGrade]", "Id"), LeftJoin("jShopGrade"), TextualField("ShopGradeName")]
        [LookupEditor("Aoc.ShopGradeChildren")]
        public Int32? ShopGradeId
        {
            get { return Fields.ShopGradeId[this]; }
            set { Fields.ShopGradeId[this] = value; }
        }

        [DisplayName("Approve Flow"), Column("approveFlow"), Size(50), NotNull, QuickSearch, DefaultValue("3,4,5")]
        public String ApproveFlow
        {
            get { return Fields.ApproveFlow[this]; }
            set { Fields.ApproveFlow[this] = value; }
        }

        [DisplayName("Content"), NotNull, TextAreaEditor(Rows = 8)]
        public String Content
        {
            get { return Fields.Content[this]; }
            set { Fields.Content[this] = value; }
        }

        [DisplayName("Status"), Column("status"), NotNull, DefaultValue(CommonStatus.启用)]
        public CommonStatus? Status
        {
            get { return (CommonStatus?)Fields.Status[this]; }
            set { Fields.Status[this] = (Int16?)value; }
        }

        [DisplayName("Type"), Column("type"), Size(8)]
        public String Type
        {
            get { return Fields.Type[this]; }
            set { Fields.Type[this] = value; }
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
        public String ShopGradeStatus
        {
            get { return Fields.ShopGradeStatus[this]; }
            set { Fields.ShopGradeStatus[this] = value; }
        }

        [DisplayName("Shop Grade Category"), Expression("jShopGrade.[category]")]
        public Int32? ShopGradeCategory
        {
            get { return Fields.ShopGradeCategory[this]; }
            set { Fields.ShopGradeCategory[this] = value; }
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

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
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
            public Int32Field Id;
            public Int32Field AgreementType;
            public Int32Field ShopGradeId;
            public StringField ApproveFlow;
            public StringField Content;
            public Int16Field Status;
            public StringField Type;

            public Int32Field ShopGradeParentId;
            public StringField ShopGradeName;
            public Int32Field ShopGradeMaxSnNumber;
            public DecimalField ShopGradeMaxStreetShopMoney;
            public Int32Field ShopGradeMaxFreeTrialCount;
            public StringField ShopGradeStatus;
            public Int32Field ShopGradeCategory;
            public Int32Field ShopGradeSpecialAmount;
            public Int32Field ShopGradeOrder;

            public RowFields()
                : base("[dbo].[AgreementTemplate]")
            {
                LocalTextPrefix = "Aoc.AgreementTemplate";
            }
        }
    }
}