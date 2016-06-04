
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ProductSerialDialog extends Serenity.EntityDialog<ProductSerialRow, any> {
        protected getFormKey() { return ProductSerialForm.formKey; }
        protected getIdProperty() { return ProductSerialRow.idProperty; }
        protected getLocalTextPrefix() { return ProductSerialRow.localTextPrefix; }
        protected getNameProperty() { return ProductSerialRow.nameProperty; }
        protected getService() { return ProductSerialService.baseUrl; }

        protected form = new ProductSerialForm(this.idPrefix);
    }
}