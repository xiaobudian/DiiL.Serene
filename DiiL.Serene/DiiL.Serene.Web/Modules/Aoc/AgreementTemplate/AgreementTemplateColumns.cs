
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
        public Int32 AgreementTemplateId { get; set; }
        //public Int32 AgreementType { get; set; }
        //public Int32 ShopGradId { get; set; }
        public String GradeName { get; set; }
        public AgreementTypes AgreementType { get; set; }
        [EditLink]
        public String ApproveFlow { get; set; }
        public String TemplateContent { get; set; }
        public String BookMarks { get; set; }
        public Int32 YearOfDate { get; set; }
        public Boolean IsValidate { get; set; }
        public DateTime ExpiredTime { get; set; }
        public String Type { get; set; }
    }
}