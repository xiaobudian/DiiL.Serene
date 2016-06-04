
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SnGenerateGrid extends Serenity.EntityGrid<SnGenerateRow, any> {
        protected getColumnsKey() { return 'Aoc.SnGenerate'; }
        protected getDialogType() { return SnGenerateDialog; }
        protected getIdProperty() { return SnGenerateRow.idProperty; }
        protected getLocalTextPrefix() { return SnGenerateRow.localTextPrefix; }
        protected getService() { return SnGenerateService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}