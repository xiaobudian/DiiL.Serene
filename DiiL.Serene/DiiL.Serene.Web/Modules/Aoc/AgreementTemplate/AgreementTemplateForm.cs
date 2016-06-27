
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity.ComponentModel;
    using System;

    [FormScript("Aoc.AgreementTemplate")]
    [BasedOnRow(typeof(Entities.AgreementTemplateRow))]
    public class AgreementTemplateForm
    {
        public Int32 ShopGradeId { get; set; }
        public AgreementTypes AgreementType { get; set; }
        public String ApproveFlow { get; set; }
        public String Content { get; set; }
        public Int16 Status { get; set; }
        public String Type { get; set; }
    }
}