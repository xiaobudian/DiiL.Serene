
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.Tenants")]
    [BasedOnRow(typeof(Entities.TenantsRow))]
    public class TenantsForm
    {
        public String Name { get; set; }
    }
}