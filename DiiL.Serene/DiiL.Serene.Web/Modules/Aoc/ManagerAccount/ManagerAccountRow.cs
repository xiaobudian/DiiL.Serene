﻿
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

    [ConnectionKey("Aoc"), DisplayName("ManagerAccount"), InstanceName("ManagerAccount"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class ManagerAccountRow : Row, IIdRow, INameRow
    {
        [DisplayName("Id"), Column("id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("User Name"), Column("userName"), Size(128), NotNull, QuickSearch]
        public String UserName
        {
            get { return Fields.UserName[this]; }
            set { Fields.UserName[this] = value; }
        }

        //[DisplayName("Status"), Column("status"), Size(6), NotNull]
        //public String Status
        //{
        //    get { return Fields.Status[this]; }
        //    set { Fields.Status[this] = value; }
        //}

        [DisplayName("状态"), NotNull, DefaultValue(ManagerStatus.正常)]
        public ManagerStatus? Status
        {
            get { return (ManagerStatus?)Fields.Status[this]; }
            set { Fields.Status[this] = (Int16?)value; }
        }

        [DisplayName("Role"), Column("roleId"), NotNull,
            ForeignKey("[dbo].[ManagerRole]", "id"), LeftJoin("jRole"), TextualField("RoleName")]
        [LookupEditor(typeof(ManagerRoleRow)), ClientSide]
        public Int32? RoleId
        {
            get { return Fields.RoleId[this]; }
            set { Fields.RoleId[this] = value; }
        }

        [DisplayName("Password"), Column("password"), Size(128), NotNull]
        public String Password
        {
            get { return Fields.Password[this]; }
            set { Fields.Password[this] = value; }
        }

        [DisplayName("Name"), Column("name"), Size(128)]
        public String Name
        {
            get { return Fields.Name[this]; }
            set { Fields.Name[this] = value; }
        }

        [DisplayName("Gender"), Column("gender")]
        public Int32? Gender
        {
            get { return Fields.Gender[this]; }
            set { Fields.Gender[this] = value; }
        }

        [DisplayName("Id Card Number"), Column("idCardNumber"), Size(20)]
        public String IdCardNumber
        {
            get { return Fields.IdCardNumber[this]; }
            set { Fields.IdCardNumber[this] = value; }
        }

        [DisplayName("Email"), Column("email"), Size(128)]
        public String Email
        {
            get { return Fields.Email[this]; }
            set { Fields.Email[this] = value; }
        }

        [DisplayName("Mobile Phone Number"), Column("mobilePhoneNumber"), Size(20)]
        public String MobilePhoneNumber
        {
            get { return Fields.MobilePhoneNumber[this]; }
            set { Fields.MobilePhoneNumber[this] = value; }
        }

        [DisplayName("Tele Phone Number"), Column("telePhoneNumber"), Size(20)]
        public String TelePhoneNumber
        {
            get { return Fields.TelePhoneNumber[this]; }
            set { Fields.TelePhoneNumber[this] = value; }
        }

        [DisplayName("Create Time"), Column("createTime")]
        public DateTime? CreateTime
        {
            get { return Fields.CreateTime[this]; }
            set { Fields.CreateTime[this] = value; }
        }

        [DisplayName("Last Login Time"), Column("lastLoginTime")]
        public DateTime? LastLoginTime
        {
            get { return Fields.LastLoginTime[this]; }
            set { Fields.LastLoginTime[this] = value; }
        }

        [DisplayName("Company Name"), Column("companyName"), Size(128)]
        public String CompanyName
        {
            get { return Fields.CompanyName[this]; }
            set { Fields.CompanyName[this] = value; }
        }

        [DisplayName("Address"), Column("address"), Size(128)]
        public String Address
        {
            get { return Fields.Address[this]; }
            set { Fields.Address[this] = value; }
        }

        [DisplayName("Role Name"), Expression("jRole.[name]")]
        public String RoleName
        {
            get { return Fields.RoleName[this]; }
            set { Fields.RoleName[this] = value; }
        }

        [DisplayName("Role Description"), Expression("jRole.[description]")]
        public String RoleDescription
        {
            get { return Fields.RoleDescription[this]; }
            set { Fields.RoleDescription[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.UserName; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public ManagerAccountRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public StringField UserName;
            public Int16Field Status;
            public Int32Field RoleId;
            public StringField Password;
            public StringField Name;
            public Int32Field Gender;
            public StringField IdCardNumber;
            public StringField Email;
            public StringField MobilePhoneNumber;
            public StringField TelePhoneNumber;
            public DateTimeField CreateTime;
            public DateTimeField LastLoginTime;
            public StringField CompanyName;
            public StringField Address;

            public StringField RoleName;
            public StringField RoleDescription;

            public RowFields()
                : base("[dbo].[ManagerAccount]")
            {
                LocalTextPrefix = "Aoc.ManagerAccount";
            }
        }
    }
}