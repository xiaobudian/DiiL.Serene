
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class AgreementGrid extends Serenity.EntityGrid<AgreementRow, any> {
        protected getColumnsKey() { return 'Aoc.Agreement'; }
        protected getDialogType() { return AgreementDialog; }
        protected getIdProperty() { return AgreementRow.idProperty; }
        protected getLocalTextPrefix() { return AgreementRow.localTextPrefix; }
        protected getService() { return AgreementService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}