
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ManagerAccountDialog extends Serenity.EntityDialog<ManagerAccountRow, any> {
        protected getFormKey() { return ManagerAccountForm.formKey; }
        protected getIdProperty() { return ManagerAccountRow.idProperty; }
        protected getLocalTextPrefix() { return ManagerAccountRow.localTextPrefix; }
        protected getNameProperty() { return ManagerAccountRow.nameProperty; }
        protected getService() { return ManagerAccountService.baseUrl; }

        protected form = new ManagerAccountForm(this.idPrefix);
    }
}