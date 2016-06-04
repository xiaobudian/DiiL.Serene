
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.ProductSerial")]
    [BasedOnRow(typeof(Entities.ProductSerialRow))]
    public class ProductSerialColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        [EditLink]
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
        public CommonStatus Status { get; set; }
        public String ProductLineName { get; set; }
    }
}