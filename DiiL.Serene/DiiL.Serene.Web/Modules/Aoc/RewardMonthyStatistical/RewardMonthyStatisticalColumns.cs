
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.RewardMonthyStatistical")]
    [BasedOnRow(typeof(Entities.RewardMonthyStatisticalRow))]
    public class RewardMonthyStatisticalColumns
    {
        //[EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        //public Int32 Id { get; set; }
        //public Int32 UserId { get; set; }
        //public Int32 PlatformProviderId { get; set; }
        //public Int32 PolicyId { get; set; }
        //public Int32 TaskId { get; set; }
        [LookupEditor(typeof(AreaLookup)), QuickFilter]
        public String AreaName { get; set; }
        [QuickFilter]
        public String PlatformName { get; set; }
        public String UserCompanyName { get; set; }
        [QuickFilter]
        public Int32 Year { get; set; }
        [QuickFilter]
        public Int32 Month { get; set; }
        //[EditLink]
        public String MonthAndYear { get; set; }
        //public Int32 ShopGradeId { get; set; }
        public String TotalAmountRatio { get; set; }
        public Int32 TotalAmount { get; set; }
        public Decimal TotalRewardMoney { get; set; }
        public Int32 SmAomout { get; set; }
        public String SmAomoutRatio { get; set; }
        public Decimal SmRewardMoney { get; set; }
        public Int32 TvAmount { get; set; }
        public String TvAmountRatio { get; set; }
        public Decimal TvRewardMoney { get; set; }
        public Int32 RealShopAppearanceScore { get; set; }
        public Decimal RealShopAppearanceRewardMoney { get; set; }
        public DateTime StatisticalTime { get; set; }
        public String StatisticalRemark { get; set; }
        public Decimal FinalPolicyMoney { get; set; }
        public Decimal FinalSumMoney { get; set; }
        public Decimal FinalMaxMoney { get; set; }
        public Int32 AreaManagerId { get; set; }
        public Decimal UserSpecialAward { get; set; }
        public Decimal PlatformSpecialAward { get; set; }
        public String SpecialAmountRate { get; set; }
        public Int32 SpecialAmount { get; set; }
        public Int32 ScoreOfMonth { get; set; }
        public String ScoreOfMonthRatio { get; set; }
        public Decimal RecognizedAmount { get; set; }
        public Boolean IsReceivedConfirmation { get; set; }
        public Boolean IsConfirmPrototypeAmountunt { get; set; }
        public Boolean IsConfirmSpecialAmount { get; set; }
        public Boolean IsConfirmBrandAmount { get; set; }
        public String GdpAmountRatio { get; set; }
        public Int32 GdpAmount { get; set; }
        public Decimal GdpRewardMoney { get; set; }
        public Decimal ScoreRewardMoney { get; set; }
        public Int32 TenantId { get; set; }
    }
}