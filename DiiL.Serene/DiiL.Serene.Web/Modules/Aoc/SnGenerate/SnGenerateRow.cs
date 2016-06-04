
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

    [ConnectionKey("Aoc"), DisplayName("SNGenerate"), InstanceName("SNGenerate"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class SnGenerateRow : Row, IIdRow, INameRow
    {
        [DisplayName("Id"), Column("id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Product Version"), Column("productVersionId"), NotNull, ForeignKey("[dbo].[ProductVersion]", "id"), LeftJoin("jProductVersion"), TextualField("ProductVersionName")]
        [LookupEditor("Aoc.ProductVersion", InplaceAdd = true)]
        public Int32? ProductVersionId
        {
            get { return Fields.ProductVersionId[this]; }
            set { Fields.ProductVersionId[this] = value; }
        }

        [DisplayName("Prefix"), Column("prefix"), Size(12), NotNull, QuickSearch]
        public String Prefix
        {
            get { return Fields.Prefix[this]; }
            set { Fields.Prefix[this] = value; }
        }

        [DisplayName("Region Begin"), Column("regionBegin"), NotNull]
        public Int32? RegionBegin
        {
            get { return Fields.RegionBegin[this]; }
            set { Fields.RegionBegin[this] = value; }
        }

        [DisplayName("Region End"), Column("regionEnd"), NotNull]
        public Int32? RegionEnd
        {
            get { return Fields.RegionEnd[this]; }
            set { Fields.RegionEnd[this] = value; }
        }

        //[DisplayName("Count"), Column("count"), Expression(" (t0.RegionEnd - t0.RegionBegin) "), DefaultValue(0)]
        //public Int32? Count
        //{
        //    get { return Fields.Count[this]; }
        //    set { Fields.Count[this] = value; }
        //}

        [DisplayName("Length"), Column("length"), NotNull]
        public Int32? Length
        {
            get { return Fields.Length[this]; }
            set { Fields.Length[this] = value; }
        }

        [DisplayName("Generate Time"), Column("generateTime"), NotNull, DefaultValue("now")]
        public DateTime? GenerateTime
        {
            get { return Fields.GenerateTime[this]; }
            set { Fields.GenerateTime[this] = value; }
        }

        [DisplayName("Manager Account"), Column("managerAccountId"), NotNull,
            ForeignKey("[dbo].[Users]", "UserId"), LeftJoin("jUsers"), TextualField("UserName")]
        [LookupEditor("Default.User", InplaceAdd = true)]
        public Int32? ManagerAccountId
        {
            get { return Fields.ManagerAccountId[this]; }
            set { Fields.ManagerAccountId[this] = value; }
        }

        [DisplayName("Date Of Production"), Column("dateOfProduction"), NotNull, DefaultValue("now")]
        public DateTime? DateOfProduction
        {
            get { return Fields.DateOfProduction[this]; }
            set { Fields.DateOfProduction[this] = value; }
        }

        [DisplayName("Task Status"), Column("taskStatus")]
        public String TaskStatus
        {
            get { return Fields.TaskStatus[this]; }
            set { Fields.TaskStatus[this] = value; }
        }

        [DisplayName("Product Version Name"), Expression("jProductVersion.[name]")]
        public String ProductVersionName
        {
            get { return Fields.ProductVersionName[this]; }
            set { Fields.ProductVersionName[this] = value; }
        }

        [DisplayName("Product Version Create Time"), Expression("jProductVersion.[createTime]")]
        public DateTime? ProductVersionCreateTime
        {
            get { return Fields.ProductVersionCreateTime[this]; }
            set { Fields.ProductVersionCreateTime[this] = value; }
        }

        [DisplayName("Product Version Status"), Expression("jProductVersion.[status]")]
        public String ProductVersionStatus
        {
            get { return Fields.ProductVersionStatus[this]; }
            set { Fields.ProductVersionStatus[this] = value; }
        }

        [DisplayName("Product Version Product Serial Id"), Expression("jProductVersion.[ProductSerialId]")]
        public Int32? ProductVersionProductSerialId
        {
            get { return Fields.ProductVersionProductSerialId[this]; }
            set { Fields.ProductVersionProductSerialId[this] = value; }
        }

        [DisplayName("Manager UserName"), Expression("jUsers.[UserName]")]
        public String ManagerAccountUserName
        {
            get { return Fields.ManagerAccountUserName[this]; }
            set { Fields.ManagerAccountUserName[this] = value; }
        }

        //[DisplayName("Manager Account Status"), Expression("jManagerAccount.[status]")]
        //public Int16? ManagerAccountStatus
        //{
        //    get { return Fields.ManagerAccountStatus[this]; }
        //    set { Fields.ManagerAccountStatus[this] = value; }
        //}

        //[DisplayName("Manager Account Role Id"), Expression("jManagerAccount.[roleId]")]
        //public Int32? ManagerAccountRoleId
        //{
        //    get { return Fields.ManagerAccountRoleId[this]; }
        //    set { Fields.ManagerAccountRoleId[this] = value; }
        //}

        //[DisplayName("Manager Account Password"), Expression("jManagerAccount.[password]")]
        //public String ManagerAccountPassword
        //{
        //    get { return Fields.ManagerAccountPassword[this]; }
        //    set { Fields.ManagerAccountPassword[this] = value; }
        //}

        //[DisplayName("Manager Account Name"), Expression("jManagerAccount.[name]")]
        //public String ManagerAccountName
        //{
        //    get { return Fields.ManagerAccountName[this]; }
        //    set { Fields.ManagerAccountName[this] = value; }
        //}

        //[DisplayName("Manager Account Gender"), Expression("jManagerAccount.[gender]")]
        //public Int32? ManagerAccountGender
        //{
        //    get { return Fields.ManagerAccountGender[this]; }
        //    set { Fields.ManagerAccountGender[this] = value; }
        //}

        //[DisplayName("Manager Account Id Card Number"), Expression("jManagerAccount.[idCardNumber]")]
        //public String ManagerAccountIdCardNumber
        //{
        //    get { return Fields.ManagerAccountIdCardNumber[this]; }
        //    set { Fields.ManagerAccountIdCardNumber[this] = value; }
        //}

        //[DisplayName("Manager Account Email"), Expression("jManagerAccount.[email]")]
        //public String ManagerAccountEmail
        //{
        //    get { return Fields.ManagerAccountEmail[this]; }
        //    set { Fields.ManagerAccountEmail[this] = value; }
        //}

        //[DisplayName("Manager Account Mobile Phone Number"), Expression("jManagerAccount.[mobilePhoneNumber]")]
        //public String ManagerAccountMobilePhoneNumber
        //{
        //    get { return Fields.ManagerAccountMobilePhoneNumber[this]; }
        //    set { Fields.ManagerAccountMobilePhoneNumber[this] = value; }
        //}

        //[DisplayName("Manager Account Tele Phone Number"), Expression("jManagerAccount.[telePhoneNumber]")]
        //public String ManagerAccountTelePhoneNumber
        //{
        //    get { return Fields.ManagerAccountTelePhoneNumber[this]; }
        //    set { Fields.ManagerAccountTelePhoneNumber[this] = value; }
        //}

        //[DisplayName("Manager Account Create Time"), Expression("jManagerAccount.[createTime]")]
        //public DateTime? ManagerAccountCreateTime
        //{
        //    get { return Fields.ManagerAccountCreateTime[this]; }
        //    set { Fields.ManagerAccountCreateTime[this] = value; }
        //}

        //[DisplayName("Manager Account Last Login Time"), Expression("jManagerAccount.[lastLoginTime]")]
        //public DateTime? ManagerAccountLastLoginTime
        //{
        //    get { return Fields.ManagerAccountLastLoginTime[this]; }
        //    set { Fields.ManagerAccountLastLoginTime[this] = value; }
        //}

        //[DisplayName("Manager Account Company Name"), Expression("jManagerAccount.[companyName]")]
        //public String ManagerAccountCompanyName
        //{
        //    get { return Fields.ManagerAccountCompanyName[this]; }
        //    set { Fields.ManagerAccountCompanyName[this] = value; }
        //}

        //[DisplayName("Manager Account Address"), Expression("jManagerAccount.[address]")]
        //public String ManagerAccountAddress
        //{
        //    get { return Fields.ManagerAccountAddress[this]; }
        //    set { Fields.ManagerAccountAddress[this] = value; }
        //}

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Prefix; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public SnGenerateRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public Int32Field ProductVersionId;
            public StringField Prefix;
            public Int32Field RegionBegin;
            public Int32Field RegionEnd;
            //public Int32Field Count;
            public Int32Field Length;
            public DateTimeField GenerateTime;
            public Int32Field ManagerAccountId;
            public DateTimeField DateOfProduction;
            public StringField TaskStatus;

            public StringField ProductVersionName;
            public DateTimeField ProductVersionCreateTime;
            public StringField ProductVersionStatus;
            public Int32Field ProductVersionProductSerialId;

            public StringField ManagerAccountUserName;
            //public Int16Field ManagerAccountStatus;
            //public Int32Field ManagerAccountRoleId;
            //public StringField ManagerAccountPassword;
            //public StringField ManagerAccountName;
            //public Int32Field ManagerAccountGender;
            //public StringField ManagerAccountIdCardNumber;
            //public StringField ManagerAccountEmail;
            //public StringField ManagerAccountMobilePhoneNumber;
            //public StringField ManagerAccountTelePhoneNumber;
            //public DateTimeField ManagerAccountCreateTime;
            //public DateTimeField ManagerAccountLastLoginTime;
            //public StringField ManagerAccountCompanyName;
            //public StringField ManagerAccountAddress;

            public RowFields()
                : base("[dbo].[SNGenerate]")
            {
                LocalTextPrefix = "Aoc.SnGenerate";
            }
        }
    }
}