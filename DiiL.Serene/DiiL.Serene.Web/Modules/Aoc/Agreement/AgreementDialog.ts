
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class AgreementDialog extends Serenity.EntityDialog<AgreementRow, any> {
        protected getFormKey() { return AgreementForm.formKey; }
        protected getIdProperty() { return AgreementRow.idProperty; }
        protected getLocalTextPrefix() { return AgreementRow.localTextPrefix; }
        protected getNameProperty() { return AgreementRow.nameProperty; }
        protected getService() { return AgreementService.baseUrl; }

        protected form = new AgreementForm(this.idPrefix);
    }
}