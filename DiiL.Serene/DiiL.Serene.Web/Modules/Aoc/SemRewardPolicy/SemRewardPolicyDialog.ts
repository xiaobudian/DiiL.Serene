
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class SemRewardPolicyDialog extends Serenity.EntityDialog<SemRewardPolicyRow, any> {
        protected getFormKey() { return SemRewardPolicyForm.formKey; }
        protected getIdProperty() { return SemRewardPolicyRow.idProperty; }
        protected getLocalTextPrefix() { return SemRewardPolicyRow.localTextPrefix; }
        protected getNameProperty() { return SemRewardPolicyRow.nameProperty; }
        protected getService() { return SemRewardPolicyService.baseUrl; }

        protected form = new SemRewardPolicyForm(this.idPrefix);
    }
}