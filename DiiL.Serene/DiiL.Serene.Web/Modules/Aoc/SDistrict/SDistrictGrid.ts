
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SDistrictGrid extends Serenity.EntityGrid<SDistrictRow, any> {
        protected getColumnsKey() { return 'Aoc.SDistrict'; }
        protected getDialogType() { return SDistrictDialog; }
        protected getIdProperty() { return SDistrictRow.idProperty; }
        protected getLocalTextPrefix() { return SDistrictRow.localTextPrefix; }
        protected getService() { return SDistrictService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}