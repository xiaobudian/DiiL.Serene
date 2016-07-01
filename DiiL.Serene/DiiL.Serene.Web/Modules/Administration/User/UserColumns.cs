
namespace DiiL.Serene.Administration.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Administration.User")]
    [BasedOnRow(typeof(Entities.UserRow))]
    public class UserColumns
    {
        [EditLink, AlignRight, Width(55)]
        public String UserId { get; set; }
        [EditLink, Width(150)]
        public String Username { get; set; }
        [Width(150)]
        public String DisplayName { get; set; }
        [Width(250)]
        public String Email { get; set; }
        public String TenantName { get; set; }
        public Int32 Gender;
        public String IdCardNumber;
        public String MobilePhoneNumber;
        public String TelePhoneNumber;
       
        public String CompanyName;
        public String Address;
        

        public Int32 RegionId;
        public String RegionName;

        public Int32 ProvinceId;
        public String ProvinceName;
        [Width(100)]
        public String Source { get; set; }
        public DateTime InsertDate { get; set; }
        public Int32 InsertUserId { get; set; }
        public DateTime UpdateDate { get; set; }
        public Int32 UpdateUserId { get; set; }
        public DateTime LastDirectoryUpdate { get; set; }
        public Int16 IsActive { get; set; }
        public Int32 TenantId { get; set; }
    }
}