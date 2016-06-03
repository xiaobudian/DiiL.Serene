
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ManagerRoleGrid extends Serenity.EntityGrid<ManagerRoleRow, any> {
        protected getColumnsKey() { return 'Aoc.ManagerRole'; }
        protected getDialogType() { return ManagerRoleDialog; }
        protected getIdProperty() { return ManagerRoleRow.idProperty; }
        protected getLocalTextPrefix() { return ManagerRoleRow.localTextPrefix; }
        protected getService() { return ManagerRoleService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}