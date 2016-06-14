
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

    [ConnectionKey("Aoc"), DisplayName("ProductLine"), InstanceName("ProductLine"), TwoLevelCached]
    [ReadPermission(Aoc.PermissionKeys.ProductLine.View)]
    [ModifyPermission(Aoc.PermissionKeys.ProductLine.Modify)]
    [DeletePermission(Aoc.PermissionKeys.ProductLine.Delete)]
    [LookupScript("Aoc.ProductLine")]
    public sealed class ProductLineRow : Row, IIdRow, INameRow
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

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Name; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public ProductLineRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public StringField Name;
            public DateTimeField CreateTime;
            public Int16Field Status;

            public RowFields()
                : base("[dbo].[ProductLine]")
            {
                LocalTextPrefix = "Aoc.ProductLine";
            }
        }
    }
}