
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ProductSerialGrid extends Serenity.EntityGrid<ProductSerialRow, any> {
        protected getColumnsKey() { return 'Aoc.ProductSerial'; }
        protected getDialogType() { return ProductSerialDialog; }
        protected getIdProperty() { return ProductSerialRow.idProperty; }
        protected getLocalTextPrefix() { return ProductSerialRow.localTextPrefix; }
        protected getService() { return ProductSerialService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}