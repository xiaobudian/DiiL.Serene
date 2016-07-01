
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class StatusCollectionDialog extends Serenity.EntityDialog<StatusCollectionRow, any> {
        protected getFormKey() { return StatusCollectionForm.formKey; }
        protected getIdProperty() { return StatusCollectionRow.idProperty; }
        protected getLocalTextPrefix() { return StatusCollectionRow.localTextPrefix; }
        protected getNameProperty() { return StatusCollectionRow.nameProperty; }
        protected getService() { return StatusCollectionService.baseUrl; }

        protected form = new StatusCollectionForm(this.idPrefix);
    }
}