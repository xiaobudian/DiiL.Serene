
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ShopGradeDialog extends Serenity.EntityDialog<ShopGradeRow, any> {
        protected getFormKey() { return ShopGradeForm.formKey; }
        protected getIdProperty() { return ShopGradeRow.idProperty; }
        protected getLocalTextPrefix() { return ShopGradeRow.localTextPrefix; }
        protected getNameProperty() { return ShopGradeRow.nameProperty; }
        protected getService() { return ShopGradeService.baseUrl; }

        protected form = new ShopGradeForm(this.idPrefix);
    }
}