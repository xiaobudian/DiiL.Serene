
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ManagerRoleDialog extends Serenity.EntityDialog<ManagerRoleRow, any> {
        protected getFormKey() { return ManagerRoleForm.formKey; }
        protected getIdProperty() { return ManagerRoleRow.idProperty; }
        protected getLocalTextPrefix() { return ManagerRoleRow.localTextPrefix; }
        protected getNameProperty() { return ManagerRoleRow.nameProperty; }
        protected getService() { return ManagerRoleService.baseUrl; }

        protected form = new ManagerRoleForm(this.idPrefix);
    }
}