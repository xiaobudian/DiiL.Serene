
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.SnGenerate")]
    [BasedOnRow(typeof(Entities.SnGenerateRow))]
    public class SnGenerateForm
    {
        public Int32 TenantId { get; set; }
        public Int32 ProductLineId { get; set; }
        public Int32 ProductSerialId { get; set; }
        public Int32 ProductVersionId { get; set; }
        public String Prefix { get; set; }
        public Int32 RegionBegin { get; set; }
        public Int32 RegionEnd { get; set; }
        //public Int32 Count { get; set; }
        public Int32 Length { get; set; }
        public DateTime GenerateTime { get; set; }
        //public Int32 ManagerAccountId { get; set; }
        public DateTime DateOfProduction { get; set; }
        public String TaskStatus { get; set; }
    }
}