
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.SemRewardPolicy")]
    [BasedOnRow(typeof(Entities.SemRewardPolicyRow))]
    public class SemRewardPolicyColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 PolicyId { get; set; }
        public Int32 ShopGradeId { get; set; }
        public Int32 TotalAmount { get; set; }
        public Int16 Status { get; set; }
        public DateTime EditTime { get; set; }
        public DateTime Begintime { get; set; }
        public DateTime Endtime { get; set; }
        [EditLink]
        public String Amount { get; set; }
        public Int32 MaxScore { get; set; }
        public Decimal NotStreetReward { get; set; }
        public Decimal StreetReward { get; set; }
        public Int32 TenantId { get; set; }
    }
}