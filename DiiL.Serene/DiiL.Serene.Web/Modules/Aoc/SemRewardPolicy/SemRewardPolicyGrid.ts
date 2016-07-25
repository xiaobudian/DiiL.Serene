
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class SemRewardPolicyGrid extends Serenity.EntityGrid<SemRewardPolicyRow, any> {
        protected getColumnsKey() { return 'Aoc.SemRewardPolicy'; }
        protected getDialogType() { return SemRewardPolicyDialog; }
        protected getIdProperty() { return SemRewardPolicyRow.idProperty; }
        protected getLocalTextPrefix() { return SemRewardPolicyRow.localTextPrefix; }
        protected getService() { return SemRewardPolicyService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}