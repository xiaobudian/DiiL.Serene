
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    @Serenity.Decorators.responsive()
    export class RewardMonthyStatisticalDialog extends Serenity.EntityDialog<RewardMonthyStatisticalRow, any> {
        protected getFormKey() { return RewardMonthyStatisticalForm.formKey; }
        protected getIdProperty() { return RewardMonthyStatisticalRow.idProperty; }
        protected getLocalTextPrefix() { return RewardMonthyStatisticalRow.localTextPrefix; }
        protected getNameProperty() { return RewardMonthyStatisticalRow.nameProperty; }
        protected getService() { return RewardMonthyStatisticalService.baseUrl; }

        protected form = new RewardMonthyStatisticalForm(this.idPrefix);
    }
}