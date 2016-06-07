
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SProvince")]
    [BasedOnRow(typeof(Entities.SProvinceRow))]
    public class SProvinceColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 ProvinceId { get; set; }
        [EditLink]
        public String ProvinceName { get; set; }

        public String RegionName { get; set; }
    }
}