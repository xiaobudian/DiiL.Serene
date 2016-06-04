
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SnGenerate")]
    [BasedOnRow(typeof(Entities.SnGenerateRow))]
    public class SnGenerateColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        public Int32 ProductVersionId { get; set; }
        [EditLink]
        public String Prefix { get; set; }
        public Int32 RegionBegin { get; set; }
        public Int32 RegionEnd { get; set; }
        //public Int32 Count { get; set; }
        public Int32 Length { get; set; }
        public DateTime GenerateTime { get; set; }
        //public Int32 ManagerAccountId { get; set; }

        public String ManagerAccountUserName { get; set; }
        public DateTime DateOfProduction { get; set; }
        public String TaskStatus { get; set; }
    }
}