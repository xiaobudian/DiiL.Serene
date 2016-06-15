
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ProductLine")]
    [BasedOnRow(typeof(Entities.ProductLineRow))]
    public class ProductLineForm
    {
        public Int32 TenantId { get; set; }
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
        public CommonStatus Status { get; set; }
    }
}