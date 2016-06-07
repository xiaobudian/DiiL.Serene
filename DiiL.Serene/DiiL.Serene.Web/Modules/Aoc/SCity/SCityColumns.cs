
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SCity")]
    [BasedOnRow(typeof(Entities.SCityRow))]
    public class SCityColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 CityId { get; set; }
        //public Int32 ProvinceId { get; set; }
        public String ProvinceName { get; set; }
        [EditLink]
        public String CityName { get; set; }
        public String AreaCode { get; set; }
        public String ZipCode { get; set; }
    }
}