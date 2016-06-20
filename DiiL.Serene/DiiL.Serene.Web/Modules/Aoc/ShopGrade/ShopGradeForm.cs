
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.ShopGrade")]
    [BasedOnRow(typeof(Entities.ShopGradeRow))]
    public class ShopGradeForm
    {
        public Int32 TenantId { get; set; }
        public Int32 ParentId { get; set; }
        public String Name { get; set; }
        public Int32 MaxSnNumber { get; set; }
        public Decimal MaxStreetShopMoney { get; set; }
        public Int32 MaxFreeTrialCount { get; set; }
        public String Status { get; set; }
        public Int32 SpecialAmount { get; set; }
        public Int32 Order { get; set; }
    }
}