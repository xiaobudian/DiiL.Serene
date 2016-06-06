
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

    [ConnectionKey("Aoc"), DisplayName("ProductSerial"), InstanceName("ProductSerial"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    [LookupScript("Aoc.ProductSerial")]
    public sealed class ProductSerialRow : Row, IIdRow, INameRow
    {
        [DisplayName("Id"), Column("id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Name"), Column("name"), Size(30), NotNull, QuickSearch]
        public String Name
        {
            get { return Fields.Name[this]; }
            set { Fields.Name[this] = value; }
        }

        [DisplayName("Create Time"), Column("createTime"), NotNull, DefaultValue("now")]
        public DateTime? CreateTime
        {
            get { return Fields.CreateTime[this]; }
            set { Fields.CreateTime[this] = value; }
        }

        [DisplayName("Status"), Column("status"), NotNull, DefaultValue(CommonStatus.启用)]
        public CommonStatus? Status
        {
            get { return (CommonStatus?)Fields.Status[this]; }
            set { Fields.Status[this] = (Int16?)value; }
        }

        [DisplayName("Product Line"), NotNull, ForeignKey("[dbo].[ProductLine]", "id"), LeftJoin("jProductLine"), TextualField("ProductLineName")]
        [LookupEditor(typeof(ProductLineRow), InplaceAdd = true), LookupInclude]
        public Int32? ProductLineId
        {
            get { return Fields.ProductLineId[this]; }
            set { Fields.ProductLineId[this] = value; }
        }

        [DisplayName("Product Line Name"), Expression("jProductLine.[name]")]
        public String ProductLineName
        {
            get { return Fields.ProductLineName[this]; }
            set { Fields.ProductLineName[this] = value; }
        }

        [DisplayName("Product Line Create Time"), Expression("jProductLine.[createTime]")]
        public DateTime? ProductLineCreateTime
        {
            get { return Fields.ProductLineCreateTime[this]; }
            set { Fields.ProductLineCreateTime[this] = value; }
        }

        [DisplayName("Product Line Status"), Expression("jProductLine.[status]")]
        public String ProductLineStatus
        {
            get { return Fields.ProductLineStatus[this]; }
            set { Fields.ProductLineStatus[this] = value; }
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

        public ProductSerialRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public StringField Name;
            public DateTimeField CreateTime;
            public Int16Field Status;
            public Int32Field ProductLineId;

            public StringField ProductLineName;
            public DateTimeField ProductLineCreateTime;
            public StringField ProductLineStatus;

            public RowFields()
                : base("[dbo].[ProductSerial]")
            {
                LocalTextPrefix = "Aoc.ProductSerial";
            }
        }
    }
}