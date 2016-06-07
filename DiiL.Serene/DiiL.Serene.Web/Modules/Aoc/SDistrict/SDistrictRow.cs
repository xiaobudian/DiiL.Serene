
namespace DiiL.Serene.Aoc.Entities
{
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;

    [ConnectionKey("Aoc"), DisplayName("S_District"), InstanceName("S_District"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SDistrictRow : Row, IIdRow, INameRow
    {
        [DisplayName("District Id"), Column("districtId"), PrimaryKey, SortOrder(3)]
        public Int32? DistrictId
        {
            get { return Fields.DistrictId[this]; }
            set { Fields.DistrictId[this] = value; }
        }

        [DisplayName("District Name"), Column("districtName"), Size(50), QuickSearch]
        public String DistrictName
        {
            get { return Fields.DistrictName[this]; }
            set { Fields.DistrictName[this] = value; }
        }

        [DisplayName("City Id"), Column("cityId"),
            SortOrder(2), ForeignKey("[dbo].[S_City]", "cityId"), LeftJoin("jCity")]
        public Int32? CityId
        {
            get { return Fields.CityId[this]; }
            set { Fields.CityId[this] = value; }
        }

        [DisplayName("City Name"), Expression("jCity.cityName")]
        public String CityName
        {
            get { return Fields.CityName[this]; }
            set { Fields.CityName[this] = value; }
        }

        [NotNull, Expression("jCity.provinceId")]
        [DisplayName("Province Id"),
           SortOrder(1), ForeignKey("[dbo].[S_Province]", "provinceId"), LeftJoin("jProvince"), TextualField("provinceName")]
        public Int32? ProvinceId
        {
            get { return Fields.CityId[this]; }
            set { Fields.CityId[this] = value; }
        }

        [DisplayName("Province Name"), Expression("jProvince.provinceName")]
        public String ProvinceName
        {
            get { return Fields.CityName[this]; }
            set { Fields.CityName[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.DistrictId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.DistrictName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SDistrictRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field DistrictId;
            public StringField DistrictName;
            public Int32Field CityId;

            public StringField CityName;
            public Int32Field ProvinceId;
            public StringField ProvinceName;

            public RowFields()
                : base("[dbo].[S_District]")
            {
                LocalTextPrefix = "Aoc.SDistrict";
            }
        }
    }
}