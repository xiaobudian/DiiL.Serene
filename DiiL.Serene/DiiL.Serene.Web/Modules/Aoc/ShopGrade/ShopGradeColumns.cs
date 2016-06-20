
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.ShopGrade")]
    [BasedOnRow(typeof(Entities.ShopGradeRow))]
    public class ShopGradeColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        public String TenantName { get; set; }
        //public Int32 ParentId { get; set; }
        public String GradeName { get; set; }
        [EditLink]
        public String Name { get; set; }
        public Int32 MaxSnNumber { get; set; }
        public Decimal MaxStreetShopMoney { get; set; }
        public Int32 MaxFreeTrialCount { get; set; }
        public Int32 Status { get; set; }
       
        public Int32 SpecialAmount { get; set; }
        public Int32 Order { get; set; }
    }
}