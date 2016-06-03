
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ShopGradeGrid extends Serenity.EntityGrid<ShopGradeRow, any> {
        protected getColumnsKey() { return 'Aoc.ShopGrade'; }
        protected getDialogType() { return ShopGradeDialog; }
        protected getIdProperty() { return ShopGradeRow.idProperty; }
        protected getLocalTextPrefix() { return ShopGradeRow.localTextPrefix; }
        protected getService() { return ShopGradeService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}