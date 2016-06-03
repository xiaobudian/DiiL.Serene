
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ManagerRole")]
    [BasedOnRow(typeof(Entities.ManagerRoleRow))]
    public class ManagerRoleForm
    {
        public String Name { get; set; }
        public String Description { get; set; }
    }
}