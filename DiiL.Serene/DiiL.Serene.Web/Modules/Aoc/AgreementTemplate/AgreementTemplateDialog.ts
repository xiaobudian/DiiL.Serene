
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class AgreementTemplateDialog extends Serenity.EntityDialog<AgreementTemplateRow, any> {
        protected getFormKey() { return AgreementTemplateForm.formKey; }
        protected getIdProperty() { return AgreementTemplateRow.idProperty; }
        protected getLocalTextPrefix() { return AgreementTemplateRow.localTextPrefix; }
        protected getNameProperty() { return AgreementTemplateRow.nameProperty; }
        protected getService() { return AgreementTemplateService.baseUrl; }

        protected form = new AgreementTemplateForm(this.idPrefix);
    }
}