
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

    [ConnectionKey("Aoc"), DisplayName("S_City"), InstanceName("S_City"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SCityRow : Row, IIdRow, INameRow
    {
        [DisplayName("City Id"), Column("cityId"), PrimaryKey, SortOrder(2)]
        public Int32? CityId
        {
            get { return Fields.CityId[this]; }
            set { Fields.CityId[this] = value; }
        }

        [DisplayName("Province"), Column("provinceId"),
            SortOrder(1),
            ForeignKey("[dbo].[S_Province]", "provinceId"), LeftJoin("jProvince"),
            TextualField("ProvinceName")]
        public Int32? ProvinceId
        {
            get { return Fields.ProvinceId[this]; }
            set { Fields.ProvinceId[this] = value; }
        }

        [DisplayName("City Name"), Column("cityName"), Size(50), QuickSearch]
        public String CityName
        {
            get { return Fields.CityName[this]; }
            set { Fields.CityName[this] = value; }
        }

        [DisplayName("Area Code"), Column("areaCode"), Size(10)]
        public String AreaCode
        {
            get { return Fields.AreaCode[this]; }
            set { Fields.AreaCode[this] = value; }
        }

        [DisplayName("Zip Code"), Column("zipCode"), Size(10)]
        public String ZipCode
        {
            get { return Fields.ZipCode[this]; }
            set { Fields.ZipCode[this] = value; }
        }

        [DisplayName("Province Name"), Expression("jProvince.[provinceName]")]
        public String ProvinceName
        {
            get { return Fields.ProvinceName[this]; }
            set { Fields.ProvinceName[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.CityId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.CityName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SCityRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field CityId;
            public Int32Field ProvinceId;
            public StringField CityName;
            public StringField AreaCode;
            public StringField ZipCode;

            public StringField ProvinceName;

            public RowFields()
                : base("[dbo].[S_City]")
            {
                LocalTextPrefix = "Aoc.SCity";
            }
        }
    }
}