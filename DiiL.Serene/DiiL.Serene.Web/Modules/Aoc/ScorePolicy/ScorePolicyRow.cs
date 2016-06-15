
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

    [ConnectionKey("Aoc"), DisplayName("ScorePolicy"), InstanceName("ScorePolicy"), TwoLevelCached]
    [ReadPermission(Aoc.PermissionKeys.ScorePolicy.View)]
    [ModifyPermission(Aoc.PermissionKeys.ScorePolicy.Modify)]
    [DeletePermission(Aoc.PermissionKeys.ScorePolicy.Delete)]
    public sealed class ScorePolicyRow : Row, IIdRow, INameRow
    {
        [DisplayName("Id"), Column("id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Product Version"), Column("productVersionId"),
            NotNull, ForeignKey("[dbo].[ProductVersion]", "id"),
            LeftJoin("jProductVersion"), TextualField("ProductVersionName")]
        [LookupEditor(typeof(ProductVersionRow),
            CascadeField = "ProductSerialId", CascadeFrom = "ProductSerialId"), LookupInclude]
        public Int32? ProductVersionId
        {
            get { return Fields.ProductVersionId[this]; }
            set { Fields.ProductVersionId[this] = value; }
        }

        [DisplayName("Begin Time"), Column("beginTime"), NotNull, DefaultValue("now"),
            DateTimeFormatter(DisplayFormat = "yyyy-MM-dd HH:mm:ss")]
        public DateTime? BeginTime
        {
            get { return Fields.BeginTime[this]; }
            set { Fields.BeginTime[this] = value; }
        }

        [DisplayName("End Time"), Column("endTime"), NotNull,
            DateTimeFormatter(DisplayFormat = "yyyy-MM-dd HH:mm:ss")]
        public DateTime? EndTime
        {
            get { return Fields.EndTime[this]; }
            set { Fields.EndTime[this] = value; }
        }

        [DisplayName("Score"), Column("score"), NotNull]
        public Int32? Score
        {
            get { return Fields.Score[this]; }
            set { Fields.Score[this] = value; }
        }

        [DisplayName("Description"), Column("description"), Size(256), QuickSearch]
        public String Description
        {
            get { return Fields.Description[this]; }
            set { Fields.Description[this] = value; }
        }

        [DisplayName("Status"), Column("status"), Size(50), NotNull, DefaultValue(CommonStatus.启用)]
        public CommonStatus? Status
        {
            get { return (CommonStatus?)Fields.Status[this]; }
            set { Fields.Status[this] = (Int16?)value; }
        }

        [DisplayName("Size"), Column("size"), Size(20), NotNull]
        public String Size
        {
            get { return Fields.Size[this]; }
            set { Fields.Size[this] = value; }
        }

        //[DisplayName("Category"), Column("category"), NotNull,
        //    ForeignKey("[dbo].[ShopType]", "id"), LeftJoin("jCategory"), TextualField("CategoryName")]
        //public Int32? Category
        //{
        //    get { return Fields.Category[this]; }
        //    set { Fields.Category[this] = value; }
        //}

        [DisplayName("Product Version Name"), Expression("jProductVersion.[name]")]
        public String ProductVersionName
        {
            get { return Fields.ProductVersionName[this]; }
            set { Fields.ProductVersionName[this] = value; }
        }

        //[DisplayName("Product Version Create Time"), Expression("jProductVersion.[createTime]")]
        //public DateTime? ProductVersionCreateTime
        //{
        //    get { return Fields.ProductVersionCreateTime[this]; }
        //    set { Fields.ProductVersionCreateTime[this] = value; }
        //}

        //[DisplayName("Product Version Status"), Expression("jProductVersion.[status]")]
        //public String ProductVersionStatus
        //{
        //    get { return Fields.ProductVersionStatus[this]; }
        //    set { Fields.ProductVersionStatus[this] = value; }
        //}

        [DisplayName("Product Serial"), NotNull,
            ForeignKey("[dbo].ProductSerial", "id"), LeftJoin("jProductSerial"),
            Expression("jProductVersion.[ProductSerialId]")]
        [LookupEditor(typeof(ProductSerialRow), CascadeFrom = "ProductLineId", CascadeField = "ProductLineId")]
        public Int32? ProductSerialId
        {
            get { return Fields.ProductSerialId[this]; }
            set { Fields.ProductSerialId[this] = value; }
        }

        [DisplayName("Product Line"), NotNull, Expression("jProductSerial.[ProductLineId]")]
        [LookupEditor("Aoc.ProductLine")]
        public Int32? ProductLineId
        {
            get { return Fields.ProductLineId[this]; }
            set { Fields.ProductLineId[this] = value; }
        }

        //[DisplayName("Category Name"), Expression("jCategory.[name]")]
        //public String CategoryName
        //{
        //    get { return Fields.CategoryName[this]; }
        //    set { Fields.CategoryName[this] = value; }
        //}

        //[DisplayName("Category Createtime"), Expression("jCategory.[createtime]")]
        //public DateTime? CategoryCreatetime
        //{
        //    get { return Fields.CategoryCreatetime[this]; }
        //    set { Fields.CategoryCreatetime[this] = value; }
        //}

        //[DisplayName("Category Description"), Expression("jCategory.[description]")]
        //public String CategoryDescription
        //{
        //    get { return Fields.CategoryDescription[this]; }
        //    set { Fields.CategoryDescription[this] = value; }
        //}

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Description; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public ScorePolicyRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public Int32Field ProductVersionId;
            public DateTimeField BeginTime;
            public DateTimeField EndTime;
            public Int32Field Score;
            public StringField Description;
            public Int16Field Status;
            public StringField Size;
            //public Int32Field Category;

            public StringField ProductVersionName;
            //public DateTimeField ProductVersionCreateTime;
            //public StringField ProductVersionStatus;
            public Int32Field ProductSerialId;
            public Int32Field ProductLineId;
            //public StringField CategoryName;
            //public DateTimeField CategoryCreatetime;
            //public StringField CategoryDescription;

            public RowFields()
                : base("[dbo].[ScorePolicy]")
            {
                LocalTextPrefix = "Aoc.ScorePolicy";
            }
        }
    }
}