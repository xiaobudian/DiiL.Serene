
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ScorePolicy")]
    [BasedOnRow(typeof(Entities.ScorePolicyRow))]
    public class ScorePolicyForm
    {
        public Int32 ProductLineId { get; set; }
        public Int32 ProductSerialId { get; set; }
        public Int32 ProductVersionId { get; set; }
        public Int32 Score { get; set; }
        public String Size { get; set; }
        public DateTime BeginTime { get; set; }
        public DateTime EndTime { get; set; }        
        public String Description { get; set; }
        public Int16 Status { get; set; }        
        //public Int32 Category { get; set; }
    }
}