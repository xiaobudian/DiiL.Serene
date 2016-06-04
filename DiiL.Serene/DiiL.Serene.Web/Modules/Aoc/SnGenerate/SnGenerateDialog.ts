
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SnGenerateDialog extends Serenity.EntityDialog<SnGenerateRow, any> {
        protected getFormKey() { return SnGenerateForm.formKey; }
        protected getIdProperty() { return SnGenerateRow.idProperty; }
        protected getLocalTextPrefix() { return SnGenerateRow.localTextPrefix; }
        protected getNameProperty() { return SnGenerateRow.nameProperty; }
        protected getService() { return SnGenerateService.baseUrl; }

        protected form = new SnGenerateForm(this.idPrefix);
    }
}