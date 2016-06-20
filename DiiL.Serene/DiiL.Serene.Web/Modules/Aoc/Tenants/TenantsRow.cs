
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

    [ConnectionKey("Aoc"), DisplayName("Tenants"), InstanceName("Tenants"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission(Administration.PermissionKeys.Tenants)]
    //[LookupScript("Aoc.Tenants")]
    public sealed class TenantsRow : Row, IIdRow, INameRow, IMultiTenantRow
    {
        [SortOrder(1)]
        [DisplayName("Tenant Id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("Tenant Name"), Size(100), NotNull, QuickSearch]
        public String Name
        {
            get { return Fields.Name[this]; }
            set { Fields.Name[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.Name; }
        }

        public Int32Field TenantIdField
        {
            get
            {
                return Fields.Id;
            }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public TenantsRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public StringField Name;

            public RowFields()
                : base("[dbo].[Tenants]")
            {
                LocalTextPrefix = "Aoc.Tenants";
            }
        }
    }
}