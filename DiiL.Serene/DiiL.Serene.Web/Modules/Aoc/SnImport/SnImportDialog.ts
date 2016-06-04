
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SnImportDialog extends Serenity.EntityDialog<SnImportRow, any> {
        protected getFormKey() { return SnImportForm.formKey; }
        protected getIdProperty() { return SnImportRow.idProperty; }
        protected getLocalTextPrefix() { return SnImportRow.localTextPrefix; }
        protected getNameProperty() { return SnImportRow.nameProperty; }
        protected getService() { return SnImportService.baseUrl; }

        protected form = new SnImportForm(this.idPrefix);
    }
}