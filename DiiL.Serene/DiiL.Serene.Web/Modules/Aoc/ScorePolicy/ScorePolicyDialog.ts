
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class ScorePolicyDialog extends Serenity.EntityDialog<ScorePolicyRow, any> {
        protected getFormKey() { return ScorePolicyForm.formKey; }
        protected getIdProperty() { return ScorePolicyRow.idProperty; }
        protected getLocalTextPrefix() { return ScorePolicyRow.localTextPrefix; }
        protected getNameProperty() { return ScorePolicyRow.nameProperty; }
        protected getService() { return ScorePolicyService.baseUrl; }

        protected form = new ScorePolicyForm(this.idPrefix);
    }
}