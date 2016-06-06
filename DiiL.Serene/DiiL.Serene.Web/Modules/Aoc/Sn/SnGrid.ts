
namespace DiiL.Serene.Aoc {

    @Serenity.Decorators.registerClass()
    export class SnGrid extends Serenity.EntityGrid<SnRow, any> {
        protected getColumnsKey() { return 'Aoc.Sn'; }
        protected getDialogType() { return SnDialog; }
        protected getIdProperty() { return SnRow.idProperty; }
        protected getLocalTextPrefix() { return SnRow.localTextPrefix; }
        protected getService() { return SnService.baseUrl; }

        constructor(container: JQuery) {
            super(container);

            this.getButtons
        }
       

}
}