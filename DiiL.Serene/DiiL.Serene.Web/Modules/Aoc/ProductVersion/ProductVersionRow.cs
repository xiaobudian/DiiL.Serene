
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

    [ConnectionKey("Aoc"), DisplayName("ProductVersion"), InstanceName("ProductVersion"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    //[LookupScript("Aoc.ProductVersion")]
    public sealed class ProductVersionRow : Row, IIdRow, INameRow, IMultiTenantRow
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

        [DisplayName("Product Serial"), NotNull,
            ForeignKey("[dbo].[ProductSerial]", "id"),
            LeftJoin("jProductSerial"), TextualField("ProductSerialName")]
        [LookupEditor("Aoc.ProductSerial", CascadeFrom = "ProductLineId", CascadeField = "ProductLineId"), LookupInclude]
        public Int32? ProductSerialId
        {
            get { return Fields.ProductSerialId[this]; }
            set { Fields.ProductSerialId[this] = value; }
        }

        [DisplayName("Product Serial Name"), Expression("jProductSerial.[name]")]
        public String ProductSerialName
        {
            get { return Fields.ProductSerialName[this]; }
            set { Fields.ProductSerialName[this] = value; }
        }


        [DisplayName("Product Line"), NotNull, ForeignKey("[dbo].[ProductLine]", "id"),
            LeftJoin("jProductLine"), TextualField("ProductLineName")
            Expression("jProductSerial.[ProductLineId]")]
        [LookupEditor("Aoc.ProductLine", CascadeField = "TenantId", CascadeFrom = "TenantId", InplaceAdd = true), LookupInclude]
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

        [DisplayName("Tenant"), NotNull, ForeignKey("[dbo].Tenants", "Id"), LeftJoin("jTenant")]
        [LookupEditor("Aoc.Tenants")]
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

        public ProductVersionRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public StringField Name;
            public DateTimeField CreateTime;
            public Int16Field Status;
            public Int32Field ProductSerialId;
            public StringField ProductSerialName;
            public Int32Field ProductLineId;
            public StringField ProductLineName;

            public Int32Field TenantId;
            public StringField TenantName;

            public RowFields()
                : base("[dbo].[ProductVersion]")
            {
                LocalTextPrefix = "Aoc.ProductVersion";
            }
        }
    }
}