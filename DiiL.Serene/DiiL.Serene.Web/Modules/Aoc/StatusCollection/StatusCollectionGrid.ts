
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class StatusCollectionGrid extends Serenity.EntityGrid<StatusCollectionRow, any> {
        protected getColumnsKey() { return 'Aoc.StatusCollection'; }
        protected getDialogType() { return StatusCollectionDialog; }
        protected getIdProperty() { return StatusCollectionRow.idProperty; }
        protected getLocalTextPrefix() { return StatusCollectionRow.localTextPrefix; }
        protected getService() { return StatusCollectionService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}