
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.ProductVersion")]
    [BasedOnRow(typeof(Entities.ProductVersionRow))]
    public class ProductVersionColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        public String TenantName { get; set; }
        public String ProductLineName { get; set; }
        public String ProductSerialName { get; set; }
        [EditLink]
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
        public CommonStatus Status { get; set; }


    }
}