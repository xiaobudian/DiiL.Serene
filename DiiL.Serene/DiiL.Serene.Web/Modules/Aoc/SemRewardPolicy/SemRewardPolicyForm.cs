
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.SemRewardPolicy")]
    [BasedOnRow(typeof(Entities.SemRewardPolicyRow))]
    public class SemRewardPolicyForm
    {
        public Int32 ShopGradeId { get; set; }
        public Int32 TotalAmount { get; set; }
        public Int16 Status { get; set; }
        public DateTime EditTime { get; set; }
        public DateTime Begintime { get; set; }
        public DateTime Endtime { get; set; }
        public String Amount { get; set; }
        public Int32 MaxScore { get; set; }
        public Decimal NotStreetReward { get; set; }
        public Decimal StreetReward { get; set; }
        public Int32 TenantId { get; set; }
    }
}