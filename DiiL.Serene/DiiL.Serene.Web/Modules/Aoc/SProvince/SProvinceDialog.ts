
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SProvinceDialog extends Serenity.EntityDialog<SProvinceRow, any> {
        protected getFormKey() { return SProvinceForm.formKey; }
        protected getIdProperty() { return SProvinceRow.idProperty; }
        protected getLocalTextPrefix() { return SProvinceRow.localTextPrefix; }
        protected getNameProperty() { return SProvinceRow.nameProperty; }
        protected getService() { return SProvinceService.baseUrl; }

        protected form = new SProvinceForm(this.idPrefix);
    }
}