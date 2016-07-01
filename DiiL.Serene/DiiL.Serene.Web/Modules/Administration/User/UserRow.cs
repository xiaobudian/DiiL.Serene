﻿
namespace DiiL.Serene.Administration.Entities
{
    using Aoc;
    using Aoc.Entities;
    using Newtonsoft.Json;
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;
    using System.IO;

    [ConnectionKey("Aoc"), DisplayName("Users"), InstanceName("User"), TwoLevelCached]
    [ReadPermission(Administration.PermissionKeys.Security)]
    [ModifyPermission(Administration.PermissionKeys.Security)]
    [LookupScript("Aoc.User")]
    public sealed class UserRow : LoggingRow, IIdRow, INameRow, IIsActiveRow, IMultiTenantRow
    {
        [DisplayName("User Id"), Identity, SortOrder(1)]
        public Int32? UserId
        {
            get { return Fields.UserId[this]; }
            set { Fields.UserId[this] = value; }
        }

        [DisplayName("Username"), Size(100), NotNull, QuickSearch]
        public String Username
        {
            get { return Fields.Username[this]; }
            set { Fields.Username[this] = value; }
        }

        [DisplayName("Source"), Size(4), NotNull, Insertable(false), Updatable(false), DefaultValue("site")]
        public String Source
        {
            get { return Fields.Source[this]; }
            set { Fields.Source[this] = value; }
        }

        [DisplayName("Password Hash"), Size(86), NotNull, Insertable(false), Updatable(false), MinSelectLevel(SelectLevel.Never)]
        public String PasswordHash
        {
            get { return Fields.PasswordHash[this]; }
            set { Fields.PasswordHash[this] = value; }
        }

        [DisplayName("Password Salt"), Size(10), NotNull, Insertable(false), Updatable(false), MinSelectLevel(SelectLevel.Never)]
        public String PasswordSalt
        {
            get { return Fields.PasswordSalt[this]; }
            set { Fields.PasswordSalt[this] = value; }
        }

        [DisplayName("Display Name"), Size(100), NotNull]
        public String DisplayName
        {
            get { return Fields.DisplayName[this]; }
            set { Fields.DisplayName[this] = value; }
        }

        [DisplayName("Email"), Size(100)]
        public String Email
        {
            get { return Fields.Email[this]; }
            set { Fields.Email[this] = value; }
        }

        [DisplayName("Password"), Size(50), SetFieldFlags(FieldFlags.ClientSide)]
        public String Password
        {
            get { return Fields.Password[this]; }
            set { Fields.Password[this] = value; }
        }

        [NotNull, Insertable(false), Updatable(true)]
        public Int16? IsActive
        {
            get { return Fields.IsActive[this]; }
            set { Fields.IsActive[this] = value; }
        }

        [DisplayName("Confirm Password"), Size(50), SetFieldFlags(FieldFlags.ClientSide)]
        public String PasswordConfirm
        {
            get { return Fields.PasswordConfirm[this]; }
            set { Fields.PasswordConfirm[this] = value; }
        }

        [DisplayName("Last Directory Update"), Insertable(false), Updatable(false)]
        public DateTime? LastDirectoryUpdate
        {
            get { return Fields.LastDirectoryUpdate[this]; }
            set { Fields.LastDirectoryUpdate[this] = value; }
        }

        [ForeignKey("[dbo].Tenants", "Id"), LeftJoin("jTenant")]
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

        [DisplayName("Gender")]
        public Int32? Gender
        {
            get { return Fields.Gender[this]; }
            set { Fields.Gender[this] = value; }
        }

        [DisplayName("Id Card Number"), Size(20)]
        public String IdCardNumber
        {
            get { return Fields.IdCardNumber[this]; }
            set { Fields.IdCardNumber[this] = value; }
        }

        [DisplayName("Mobile Phone Number"), Size(20)]
        public String MobilePhoneNumber
        {
            get { return Fields.MobilePhoneNumber[this]; }
            set { Fields.MobilePhoneNumber[this] = value; }
        }

        [DisplayName("Tele Phone Number"), Size(20)]
        public String TelePhoneNumber
        {
            get { return Fields.TelePhoneNumber[this]; }
            set { Fields.TelePhoneNumber[this] = value; }
        }

       

        [DisplayName("Company Name"), Size(128)]
        public String CompanyName
        {
            get { return Fields.CompanyName[this]; }
            set { Fields.CompanyName[this] = value; }
        }

        [DisplayName("Address"),Size(128)]
        public String Address
        {
            get { return Fields.Address[this]; }
            set { Fields.Address[this] = value; }
        }

        [DisplayName("Region"), ForeignKey("[dbo].[Region]", "Id"), LeftJoin("jRegion"), TextualField("RegionName")]
        public Int32? RegionId
        {
            get { return Fields.RegionId[this]; }
            set { Fields.RegionId[this] = value; }
        }

        [DisplayName("Province"), ForeignKey("[dbo].[S_Province]", "provinceId"), LeftJoin("jProvince"), TextualField("ProvinceProvinceName")]
        public Int32? ProvinceId
        {
            get { return Fields.ProvinceId[this]; }
            set { Fields.ProvinceId[this] = value; }
        }

        [DisplayName("Province Name"), Expression("jProvince.[provinceName]")]
        public String ProvinceName
        {
            get { return Fields.ProvinceName[this]; }
            set { Fields.ProvinceName[this] = value; }
        }

        [DisplayName("Region Name"), Expression("jRegion.[Name]")]
        public String RegionName
        {
            get { return Fields.RegionName[this]; }
            set { Fields.RegionName[this] = value; }
        }

        


        IIdField IIdRow.IdField
        {
            get { return Fields.UserId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Username; }
        }

        Int16Field IIsActiveRow.IsActiveField
        {
            get { return Fields.IsActive; }
        }

        public Int32Field TenantIdField
        {
            get
            {
                return Fields.TenantId;
            }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public UserRow()
            : base(Fields)
        {
        }

        public class RowFields : LoggingRowFields
        {
            public Int32Field UserId;
            public StringField Username;
            public StringField Source;
            public StringField PasswordHash;
            public StringField PasswordSalt;
            public StringField DisplayName;
            public StringField Email;
            public DateTimeField LastDirectoryUpdate;
            public Int16Field IsActive;

            public StringField Password;
            public StringField PasswordConfirm;

            public Int32Field TenantId;
            public StringField TenantName;

            public Int32Field Gender;
            public StringField IdCardNumber;
            public StringField MobilePhoneNumber;
            public StringField TelePhoneNumber;
          
            public StringField CompanyName;
            public StringField Address;

            public Int32Field RegionId;
            public StringField RegionName;

            public Int32Field ProvinceId;
            public StringField ProvinceName;

            public RowFields()
                : base("Users")
            {
                LocalTextPrefix = "Administration.User";
            }
        }
    }
}