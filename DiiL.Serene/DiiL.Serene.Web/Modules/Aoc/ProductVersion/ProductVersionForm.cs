
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ProductVersion")]
    [BasedOnRow(typeof(Entities.ProductVersionRow))]
    public class ProductVersionForm
    {
        [LookupEditor(typeof(Entities.ProductLineRow))]
        public Int32 ProductLineId { get; set; }
        [LookupEditor(typeof(Entities.ProductSerialRow),
            CascadeFrom = "ProductLineId", CascadeField = "ProductLineId")]
        public Int32 ProductSerialId { get; set; }
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
        public CommonStatus Status { get; set; }

    }
}