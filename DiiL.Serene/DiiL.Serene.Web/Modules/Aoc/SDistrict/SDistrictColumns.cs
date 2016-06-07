
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SDistrict")]
    [BasedOnRow(typeof(Entities.SDistrictRow))]
    public class SDistrictColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 DistrictId { get; set; }
        public String ProvinceName { get; set; }
        public String CityName { get; set; }
        [EditLink]
        public String DistrictName { get; set; }
        //public Int32 CityId { get; set; }
    }
}