
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SnImport")]
    [BasedOnRow(typeof(Entities.SnImportRow))]
    public class SnImportColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 ImportId { get; set; }
        public Int32 UserId { get; set; }
        public Int32 SellerId { get; set; }
        public DateTime SellTime { get; set; }
        public Int32 Score { get; set; }
        public Int32 ProductVesionId { get; set; }
        [EditLink]
        public String ProductVesionName { get; set; }
        public String ProductExProperties { get; set; }
        public Int32 ProductSerialId { get; set; }
        public String ProductSerialName { get; set; }
        public Int32 ProductLineId { get; set; }
        public String ProductLineName { get; set; }
        public DateTime ImportTime { get; set; }
        public Int32 PlatformProviderManagerId { get; set; }
        public Int32 AreaManagerId { get; set; }
        public Int32 Year { get; set; }
        public Int32 Month { get; set; }
        public String Sn { get; set; }
    }
}