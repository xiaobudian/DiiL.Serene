
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ProductVersionDialog extends Serenity.EntityDialog<ProductVersionRow, any> {
        protected getFormKey() { return ProductVersionForm.formKey; }
        protected getIdProperty() { return ProductVersionRow.idProperty; }
        protected getLocalTextPrefix() { return ProductVersionRow.localTextPrefix; }
        protected getNameProperty() { return ProductVersionRow.nameProperty; }
        protected getService() { return ProductVersionService.baseUrl; }

        protected form = new ProductVersionForm(this.idPrefix);

        constructor() {
            super();

            //this.tabs.on('tabsactivate', (e, i) => {
            //    this.arrange();
            //});
        }
    }
}