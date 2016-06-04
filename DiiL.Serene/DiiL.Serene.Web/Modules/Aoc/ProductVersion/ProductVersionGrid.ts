
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ProductVersionGrid extends Serenity.EntityGrid<ProductVersionRow, any> {
        protected getColumnsKey() { return 'Aoc.ProductVersion'; }
        protected getDialogType() { return ProductVersionDialog; }
        protected getIdProperty() { return ProductVersionRow.idProperty; }
        protected getLocalTextPrefix() { return ProductVersionRow.localTextPrefix; }
        protected getService() { return ProductVersionService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}