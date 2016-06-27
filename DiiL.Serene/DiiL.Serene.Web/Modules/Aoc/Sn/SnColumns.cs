
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;
    using Serenity.Data.Mapping;
    [ColumnsScript("Aoc.Sn")]
    [BasedOnRow(typeof(Entities.SnRow))]
    public class SnColumns
    {
        [DisplayName("SerialNumber"), AlignRight, Width(200)]
        public String Number { get; set; }
        [QuickSearch]
        public Int32 GenerateTaskId { get; set; }
        //public Int32 ProductVersionId { get; set; }
        public String ProductVersionName { get; set; }
        public String SnPrefix { get; set; }
        //public Int32 SnValue { get; set; }
        public String SnLast2Char { get; set; }
        public String Status { get; set; }
    }
}