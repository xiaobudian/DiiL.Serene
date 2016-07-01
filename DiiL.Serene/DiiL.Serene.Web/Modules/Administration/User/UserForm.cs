
namespace DiiL.Serene.Administration.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Administration.User")]
    [BasedOnRow(typeof(Entities.UserRow))]
    public class UserForm
    {
        public Int32 TenantId { get; set; }
        public String Username { get; set; }
        public String DisplayName { get; set; }
        [EmailEditor]
        public String Email { get; set; }      
        public DateTime InsertDate { get; set; }
        public Int32 InsertUserId { get; set; }
        public DateTime UpdateDate { get; set; }
        public Int32 UpdateUserId { get; set; }
        public DateTime LastDirectoryUpdate { get; set; }
        public Int16 IsActive { get; set; }
        public Int32 Gender { get; set; }
        public String IdCardNumber { get; set; }
        public String MobilePhoneNumber { get; set; }
        public String TelePhoneNumber { get; set; }
        public String CompanyName { get; set; }
        public String Address { get; set; }
        public Int32 RegionId { get; set; }
        public Int32 ProvinceId { get; set; }
        [PasswordEditor, Required(true)]
        public String Password { get; set; }
        [PasswordEditor, OneWay, Required(true)]
        public String PasswordConfirm { get; set; }
        [OneWay]
        public string Source { get; set; }
    }
}