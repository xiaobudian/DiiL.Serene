
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SProvinceGrid extends Serenity.EntityGrid<SProvinceRow, any> {
        protected getColumnsKey() { return 'Aoc.SProvince'; }
        protected getDialogType() { return SProvinceDialog; }
        protected getIdProperty() { return SProvinceRow.idProperty; }
        protected getLocalTextPrefix() { return SProvinceRow.localTextPrefix; }
        protected getService() { return SProvinceService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}