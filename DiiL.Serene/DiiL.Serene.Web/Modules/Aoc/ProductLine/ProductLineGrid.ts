
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ProductLineGrid extends Serenity.EntityGrid<ProductLineRow, any> {
        protected getColumnsKey() { return 'Aoc.ProductLine'; }
        protected getDialogType() { return ProductLineDialog; }
        protected getIdProperty() { return ProductLineRow.idProperty; }
        protected getLocalTextPrefix() { return ProductLineRow.localTextPrefix; }
        protected getService() { return ProductLineService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}