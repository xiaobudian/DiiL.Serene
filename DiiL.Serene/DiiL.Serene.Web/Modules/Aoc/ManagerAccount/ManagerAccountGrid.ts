
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ManagerAccountGrid extends Serenity.EntityGrid<ManagerAccountRow, any> {
        protected getColumnsKey() { return 'Aoc.ManagerAccount'; }
        protected getDialogType() { return ManagerAccountDialog; }
        protected getIdProperty() { return ManagerAccountRow.idProperty; }
        protected getLocalTextPrefix() { return ManagerAccountRow.localTextPrefix; }
        protected getService() { return ManagerAccountService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}