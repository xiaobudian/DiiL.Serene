
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.ScorePolicy")]
    [BasedOnRow(typeof(Entities.ScorePolicyRow))]
    public class ScorePolicyColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        //public Int32 ProductVersionId { get; set; }
        [EditLink]
        public String ProductVersionName { get; set; }
        //public Int32 Category { get; set; }
        public String Size { get; set; }
        public Int32 Score { get; set; }
        public DateTime BeginTime { get; set; }
        public DateTime EndTime { get; set; }
        public String Description { get; set; }
        public Int16 Status { get; set; }
        
        
    }
}