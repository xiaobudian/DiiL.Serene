
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

    [ConnectionKey("Aoc"), DisplayName("SN"), InstanceName("SN"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SnRow : Row, IIdRow, INameRow
    {
        [DisplayName("Number"), Column("number"), Size(50), PrimaryKey, QuickSearch]
        public String Number
        {
            get { return Fields.Number[this]; }
            set { Fields.Number[this] = value; }
        }

        [DisplayName("Generate Task"), Column("generateTaskId"), NotNull, ForeignKey("[dbo].[SNGenerate]", "id"), LeftJoin("jGenerateTask"), TextualField("GenerateTaskPrefix")]
        public Int32? GenerateTaskId
        {
            get { return Fields.GenerateTaskId[this]; }
            set { Fields.GenerateTaskId[this] = value; }
        }

        [DisplayName("Product Version Id"), Column("productVersionId")]
        public Int32? ProductVersionId
        {
            get { return Fields.ProductVersionId[this]; }
            set { Fields.ProductVersionId[this] = value; }
        }

        [DisplayName("Sn Prefix"), Column("snPrefix"), Size(16)]
        public String SnPrefix
        {
            get { return Fields.SnPrefix[this]; }
            set { Fields.SnPrefix[this] = value; }
        }

        [DisplayName("Sn Value"), Column("snValue")]
        public Int32? SnValue
        {
            get { return Fields.SnValue[this]; }
            set { Fields.SnValue[this] = value; }
        }

        [DisplayName("Sn Last2 Char"), Column("snLast2Char"), Size(4)]
        public String SnLast2Char
        {
            get { return Fields.SnLast2Char[this]; }
            set { Fields.SnLast2Char[this] = value; }
        }

        [DisplayName("Status"), Column("status"), Size(50)]
        public String Status
        {
            get { return Fields.Status[this]; }
            set { Fields.Status[this] = value; }
        }

        [DisplayName("Generate Task Product Version Id"), Expression("jGenerateTask.[productVersionId]")]
        public Int32? GenerateTaskProductVersionId
        {
            get { return Fields.GenerateTaskProductVersionId[this]; }
            set { Fields.GenerateTaskProductVersionId[this] = value; }
        }

        [DisplayName("Generate Task Prefix"), Expression("jGenerateTask.[prefix]")]
        public String GenerateTaskPrefix
        {
            get { return Fields.GenerateTaskPrefix[this]; }
            set { Fields.GenerateTaskPrefix[this] = value; }
        }

        [DisplayName("Generate Task Region Begin"), Expression("jGenerateTask.[regionBegin]")]
        public Int32? GenerateTaskRegionBegin
        {
            get { return Fields.GenerateTaskRegionBegin[this]; }
            set { Fields.GenerateTaskRegionBegin[this] = value; }
        }

        [DisplayName("Generate Task Region End"), Expression("jGenerateTask.[regionEnd]")]
        public Int32? GenerateTaskRegionEnd
        {
            get { return Fields.GenerateTaskRegionEnd[this]; }
            set { Fields.GenerateTaskRegionEnd[this] = value; }
        }

        [DisplayName("Generate Task Count"), Expression("jGenerateTask.[count]")]
        public Int32? GenerateTaskCount
        {
            get { return Fields.GenerateTaskCount[this]; }
            set { Fields.GenerateTaskCount[this] = value; }
        }

        [DisplayName("Generate Task Length"), Expression("jGenerateTask.[length]")]
        public Int32? GenerateTaskLength
        {
            get { return Fields.GenerateTaskLength[this]; }
            set { Fields.GenerateTaskLength[this] = value; }
        }

        [DisplayName("Generate Task Generate Time"), Expression("jGenerateTask.[generateTime]")]
        public DateTime? GenerateTaskGenerateTime
        {
            get { return Fields.GenerateTaskGenerateTime[this]; }
            set { Fields.GenerateTaskGenerateTime[this] = value; }
        }

        [DisplayName("Generate Task Manager Account Id"), Expression("jGenerateTask.[managerAccountId]")]
        public Int32? GenerateTaskManagerAccountId
        {
            get { return Fields.GenerateTaskManagerAccountId[this]; }
            set { Fields.GenerateTaskManagerAccountId[this] = value; }
        }

        [DisplayName("Generate Task Date Of Production"), Expression("jGenerateTask.[dateOfProduction]")]
        public DateTime? GenerateTaskDateOfProduction
        {
            get { return Fields.GenerateTaskDateOfProduction[this]; }
            set { Fields.GenerateTaskDateOfProduction[this] = value; }
        }

        [DisplayName("Generate Task Task Status"), Expression("jGenerateTask.[taskStatus]")]
        public String GenerateTaskTaskStatus
        {
            get { return Fields.GenerateTaskTaskStatus[this]; }
            set { Fields.GenerateTaskTaskStatus[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.Number; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Number; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SnRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public StringField Number;
            public Int32Field GenerateTaskId;
            public Int32Field ProductVersionId;
            public StringField SnPrefix;
            public Int32Field SnValue;
            public StringField SnLast2Char;
            public StringField Status;

            public Int32Field GenerateTaskProductVersionId;
            public StringField GenerateTaskPrefix;
            public Int32Field GenerateTaskRegionBegin;
            public Int32Field GenerateTaskRegionEnd;
            public Int32Field GenerateTaskCount;
            public Int32Field GenerateTaskLength;
            public DateTimeField GenerateTaskGenerateTime;
            public Int32Field GenerateTaskManagerAccountId;
            public DateTimeField GenerateTaskDateOfProduction;
            public StringField GenerateTaskTaskStatus;

            public RowFields()
                : base("[dbo].[SN]")
            {
                LocalTextPrefix = "Aoc.Sn";
            }
        }
    }
}