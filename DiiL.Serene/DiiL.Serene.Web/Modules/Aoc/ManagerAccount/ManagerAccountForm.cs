
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ManagerAccount")]
    [BasedOnRow(typeof(Entities.ManagerAccountRow))]
    public class ManagerAccountForm
    {
        public String UserName { get; set; }
        public ManagerStatus Status { get; set; }
        public Int32 RoleId { get; set; }
        public String Password { get; set; }
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