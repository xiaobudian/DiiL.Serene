
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SnImportGrid extends Serenity.EntityGrid<SnImportRow, any> {
        protected getColumnsKey() { return 'Aoc.SnImport'; }
        protected getDialogType() { return SnImportDialog; }
        protected getIdProperty() { return SnImportRow.idProperty; }
        protected getLocalTextPrefix() { return SnImportRow.localTextPrefix; }
        protected getService() { return SnImportService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}