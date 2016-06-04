
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.Sn")]
    [BasedOnRow(typeof(Entities.SnRow))]
    public class SnForm
    {
        public Int32 GenerateTaskId { get; set; }
        public Int32 ProductVersionId { get; set; }
        public String SnPrefix { get; set; }
        public Int32 SnValue { get; set; }
        public String SnLast2Char { get; set; }
        public String Status { get; set; }
    }
}