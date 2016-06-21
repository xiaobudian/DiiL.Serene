
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity.ComponentModel;
    using System;
    using Serenity.Data.Mapping;
    [ColumnsScript("Aoc.SnImport")]
    [BasedOnRow(typeof(Entities.SnImportRow))]
    public class SnImportColumns
    {
        //[EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        //public Int32 ImportId { get; set; }
        [QuickSearch]
        public String UserCompanyName { get; set; }
        //public Int32 UserId { get; set; }
        [QuickFilter]
        public Int32 Year { get; set; }
        [QuickFilter]
        public Int32 Month { get; set; }
        [QuickFilter]
        public String Sn { get; set; }
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
      
    }
}