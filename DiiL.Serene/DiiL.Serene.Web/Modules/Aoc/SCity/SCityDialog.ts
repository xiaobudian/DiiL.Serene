
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SCityDialog extends Serenity.EntityDialog<SCityRow, any> {
        protected getFormKey() { return SCityForm.formKey; }
        protected getIdProperty() { return SCityRow.idProperty; }
        protected getLocalTextPrefix() { return SCityRow.localTextPrefix; }
        protected getNameProperty() { return SCityRow.nameProperty; }
        protected getService() { return SCityService.baseUrl; }

        protected form = new SCityForm(this.idPrefix);
    }
}