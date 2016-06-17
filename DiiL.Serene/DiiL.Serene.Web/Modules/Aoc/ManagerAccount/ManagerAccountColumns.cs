
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.ManagerAccount")]
    [BasedOnRow(typeof(Entities.ManagerAccountRow))]
    public class ManagerAccountColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        public String RegionName { get; set; }
        public String ProvinceName { get; set; }
        public String TenantName { get; set; }
        [EditLink]
        public String UserName { get; set; }
        public ManagerStatus Status { get; set; }
        //public Int32 RoleId { get; set; }
        public String RoleName { get; set; }
        //public String Password { get; set; }
        public String Name { get; set; }
        public Int32 Gender { get; set; }
        public String IdCardNumber { get; set; }
        public String Email { get; set; }
        public String MobilePhoneNumber { get; set; }
        public String TelePhoneNumber { get; set; }
        public DateTime CreateTime { get; set; }
        public DateTime LastLoginTime { get; set; }
        public String CompanyName { get; set; }
        public String Address { get; set; }
    }
}