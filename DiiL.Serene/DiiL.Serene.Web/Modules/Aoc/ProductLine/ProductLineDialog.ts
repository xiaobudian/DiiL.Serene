
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ProductLineDialog extends Serenity.EntityDialog<ProductLineRow, any> {
        protected getFormKey() { return ProductLineForm.formKey; }
        protected getIdProperty() { return ProductLineRow.idProperty; }
        protected getLocalTextPrefix() { return ProductLineRow.localTextPrefix; }
        protected getNameProperty() { return ProductLineRow.nameProperty; }
        protected getService() { return ProductLineService.baseUrl; }

        protected form = new ProductLineForm(this.idPrefix);
    }
}