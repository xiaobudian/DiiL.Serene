
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ProductSerial")]
    [BasedOnRow(typeof(Entities.ProductSerialRow))]
    public class ProductSerialForm
    {
        public Int32 TenantId { get; set; }
        public Int32 ProductLineId { get; set; }
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
        public CommonStatus Status { get; set; }

    }
}