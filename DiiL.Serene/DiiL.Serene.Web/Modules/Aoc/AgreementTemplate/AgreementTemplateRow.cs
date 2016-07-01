
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

        [DisplayName("Agreement Type"), Column("agreementType"), NotNull, DefaultValue(AgreementTypes.三方协议)]
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

            public RowFields()
                : base("[dbo].[AgreementTemplate]")
            {
                LocalTextPrefix = "Aoc.AgreementTemplate";
            }
        }
    }
}