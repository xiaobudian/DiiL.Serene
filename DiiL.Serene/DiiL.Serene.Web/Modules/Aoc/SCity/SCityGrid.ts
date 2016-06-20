
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SCityGrid extends Serenity.EntityGrid<SCityRow, any> {
        protected getColumnsKey() { return 'Aoc.SCity'; }
        protected getDialogType() { return SCityDialog; }
        protected getIdProperty() { return SCityRow.idProperty; }
        protected getLocalTextPrefix() { return SCityRow.localTextPrefix; }
        protected getService() { return SCityService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}