
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class AgreementTemplateGrid extends Serenity.EntityGrid<AgreementTemplateRow, any> {
        protected getColumnsKey() { return 'Aoc.AgreementTemplate'; }
        protected getDialogType() { return AgreementTemplateDialog; }
        protected getIdProperty() { return AgreementTemplateRow.idProperty; }
        protected getLocalTextPrefix() { return AgreementTemplateRow.localTextPrefix; }
        protected getService() { return AgreementTemplateService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
    }
}