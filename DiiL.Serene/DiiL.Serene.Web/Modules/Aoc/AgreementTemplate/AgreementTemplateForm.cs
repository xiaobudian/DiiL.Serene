
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.AgreementTemplate")]
    [BasedOnRow(typeof(Entities.AgreementTemplateRow))]
    public class AgreementTemplateForm
    {
        //public Int32 AgreementType { get; set; }
        public AgreementTypes AgreementType { get; set; }
        public Int32 ShopGradId { get; set; }
        public String ApproveFlow { get; set; }
        public String TemplateContent { get; set; }
        public String BookMarks { get; set; }
        public Int32 YearOfDate { get; set; }
        public Boolean IsValidate { get; set; }
        public DateTime ExpiredTime { get; set; }
        public String Type { get; set; }
    }
}