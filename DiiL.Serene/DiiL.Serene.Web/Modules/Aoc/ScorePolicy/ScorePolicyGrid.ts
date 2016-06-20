
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class ScorePolicyGrid extends Serenity.EntityGrid<ScorePolicyRow, any> {
        protected getColumnsKey() { return 'Aoc.ScorePolicy'; }
        protected getDialogType() { return ScorePolicyDialog; }
        protected getIdProperty() { return ScorePolicyRow.idProperty; }
        protected getLocalTextPrefix() { return ScorePolicyRow.localTextPrefix; }
        protected getService() { return ScorePolicyService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}