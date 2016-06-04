
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SnDialog extends Serenity.EntityDialog<SnRow, any> {
        protected getFormKey() { return SnForm.formKey; }
        protected getIdProperty() { return SnRow.idProperty; }
        protected getLocalTextPrefix() { return SnRow.localTextPrefix; }
        protected getNameProperty() { return SnRow.nameProperty; }
        protected getService() { return SnService.baseUrl; }

        protected form = new SnForm(this.idPrefix);
    }
}