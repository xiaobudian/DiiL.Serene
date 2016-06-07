
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.AgreementTemplate")]
    [BasedOnRow(typeof(Entities.AgreementTemplateRow))]
    public class AgreementTemplateColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 Id { get; set; }
        //public Int32 AgreementType { get; set; }
        [EditLink]
        public AgreementTypes AgreementType { get; set; }
        //public Int32 ShopGradeId { get; set; }
        [EditLink]
        public String ShopGradeName { get; set; }
        public String ApproveFlow { get; set; }
        //public String Content { get; set; }
        public Int16 Status { get; set; }
        public String Type { get; set; }
    }
}