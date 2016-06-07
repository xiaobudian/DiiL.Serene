
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

    [ConnectionKey("Aoc"), DisplayName("S_Province"), InstanceName("S_Province"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SProvinceRow : Row, IIdRow, INameRow
    {
        [DisplayName("Province Id"), Column("provinceId"), PrimaryKey, SortOrder(1)]
        public Int32? ProvinceId
        {
            get { return Fields.ProvinceId[this]; }
            set { Fields.ProvinceId[this] = value; }
        }

        [DisplayName("Province Name"), Column("provinceName"), Size(50), QuickSearch]
        public String ProvinceName
        {
            get { return Fields.ProvinceName[this]; }
            set { Fields.ProvinceName[this] = value; }
        }

        [DisplayName("Region Id"), ForeignKey("[dbo].Region", "Id"),
            NotNull, TextualField("Name"), LeftJoin("jRegion")]
        [LookupEditor(typeof(RegionRow))]
        public Int32? RegionId
        {
            get { return Fields.RegionId[this]; }
            set { Fields.RegionId[this] = value; }
        }

        [DisplayName("Region Name"), Expression("jRegion.Name"), QuickSearch]
        public String RegionName
        {
            get { return Fields.RegionName[this]; }
            set { Fields.RegionName[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.ProvinceId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.ProvinceName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SProvinceRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field ProvinceId;
            public StringField ProvinceName;
            public Int32Field RegionId;
            public StringField RegionName;
            public RowFields()
                : base("[dbo].[S_Province]")
            {
                LocalTextPrefix = "Aoc.SProvince";
            }
        }
    }
}