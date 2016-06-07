
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SDistrictDialog extends Serenity.EntityDialog<SDistrictRow, any> {
        protected getFormKey() { return SDistrictForm.formKey; }
        protected getIdProperty() { return SDistrictRow.idProperty; }
        protected getLocalTextPrefix() { return SDistrictRow.localTextPrefix; }
        protected getNameProperty() { return SDistrictRow.nameProperty; }
        protected getService() { return SDistrictService.baseUrl; }

        protected form = new SDistrictForm(this.idPrefix);
    }
}