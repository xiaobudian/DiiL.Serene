
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

    [ConnectionKey("Aoc"), DisplayName("SNImport"), InstanceName("SNImport"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SnImportRow : Row, IIdRow, INameRow
    {
        [DisplayName("Import Id"), Column("importId"), Identity]
        public Int32? ImportId
        {
            get { return Fields.ImportId[this]; }
            set { Fields.ImportId[this] = value; }
        }

        [DisplayName("User Id"), Column("userId"),ForeignKey("[dbo].UserAccount","userId"),
            TextualField("companyName"),LeftJoin("jUserAccount"), NotNull]
        public Int32? UserId
        {
            get { return Fields.UserId[this]; }
            set { Fields.UserId[this] = value; }
        }

        [DisplayName("User Company Name"),Expression("jUserAccount.companyName")]
       public String UserCompanyName
        {
            get { return Fields.UserCompanyName[this]; }
            set { Fields.UserCompanyName[this] = value; }
        }

        [DisplayName("Seller Id"), Column("sellerId"), NotNull]
        public Int32? SellerId
        {
            get { return Fields.SellerId[this]; }
            set { Fields.SellerId[this] = value; }
        }

        [DisplayName("Sell Time"), Column("sellTime"), NotNull]
        public DateTime? SellTime
        {
            get { return Fields.SellTime[this]; }
            set { Fields.SellTime[this] = value; }
        }

        [DisplayName("Score"), Column("score"), NotNull]
        public Int32? Score
        {
            get { return Fields.Score[this]; }
            set { Fields.Score[this] = value; }
        }

        [DisplayName("Product Vesion Id"), Column("productVesionId"), NotNull]
        public Int32? ProductVesionId
        {
            get { return Fields.ProductVesionId[this]; }
            set { Fields.ProductVesionId[this] = value; }
        }

        [DisplayName("Product Vesion Name"), Column("productVesionName"), Size(50), NotNull, QuickSearch]
        public String ProductVesionName
        {
            get { return Fields.ProductVesionName[this]; }
            set { Fields.ProductVesionName[this] = value; }
        }

        [DisplayName("Product Ex Properties"), Column("productExProperties"), Size(128), NotNull]
        public String ProductExProperties
        {
            get { return Fields.ProductExProperties[this]; }
            set { Fields.ProductExProperties[this] = value; }
        }

        [DisplayName("Product Serial Id"), Column("productSerialId"), NotNull]
        public Int32? ProductSerialId
        {
            get { return Fields.ProductSerialId[this]; }
            set { Fields.ProductSerialId[this] = value; }
        }

        [DisplayName("Product Serial Name"), Column("productSerialName"), Size(50), NotNull]
        public String ProductSerialName
        {
            get { return Fields.ProductSerialName[this]; }
            set { Fields.ProductSerialName[this] = value; }
        }

        [DisplayName("Product Line Id"), Column("productLineId"), NotNull]
        public Int32? ProductLineId
        {
            get { return Fields.ProductLineId[this]; }
            set { Fields.ProductLineId[this] = value; }
        }

        [DisplayName("Product Line Name"), Column("productLineName"), Size(50), NotNull]
        public String ProductLineName
        {
            get { return Fields.ProductLineName[this]; }
            set { Fields.ProductLineName[this] = value; }
        }

        [DisplayName("Import Time"), Column("importTime"), NotNull]
        public DateTime? ImportTime
        {
            get { return Fields.ImportTime[this]; }
            set { Fields.ImportTime[this] = value; }
        }

        [DisplayName("Platform Provider Manager Id"), Column("platformProviderManagerId"), NotNull]
        public Int32? PlatformProviderManagerId
        {
            get { return Fields.PlatformProviderManagerId[this]; }
            set { Fields.PlatformProviderManagerId[this] = value; }
        }

        [DisplayName("Area Manager Id"), Column("areaManagerId"), NotNull]
        public Int32? AreaManagerId
        {
            get { return Fields.AreaManagerId[this]; }
            set { Fields.AreaManagerId[this] = value; }
        }

        [DisplayName("Year"), Column("year"), NotNull]
        public Int32? Year
        {
            get { return Fields.Year[this]; }
            set { Fields.Year[this] = value; }
        }

        [DisplayName("Month"), Column("month"), NotNull]
        public Int32? Month
        {
            get { return Fields.Month[this]; }
            set { Fields.Month[this] = value; }
        }

        [DisplayName("Sn"), Column("sn"), Size(50), NotNull]
        public String Sn
        {
            get { return Fields.Sn[this]; }
            set { Fields.Sn[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.ImportId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.ProductVesionName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SnImportRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field ImportId;
            public Int32Field UserId;
            public Int32Field SellerId;
            public DateTimeField SellTime;
            public Int32Field Score;
            public Int32Field ProductVesionId;
            public StringField ProductVesionName;
            public StringField ProductExProperties;
            public Int32Field ProductSerialId;
            public StringField ProductSerialName;
            public Int32Field ProductLineId;
            public StringField ProductLineName;
            public DateTimeField ImportTime;
            public Int32Field PlatformProviderManagerId;
            public Int32Field AreaManagerId;
            public Int32Field Year;
            public Int32Field Month;
            public StringField Sn;

            public StringField UserCompanyName;

            public RowFields()
                : base("[dbo].[SNImport]")
            {
                LocalTextPrefix = "Aoc.SnImport";
            }
        }
    }
}