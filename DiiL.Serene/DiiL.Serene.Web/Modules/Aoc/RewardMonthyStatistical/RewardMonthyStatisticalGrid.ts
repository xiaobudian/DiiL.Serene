
namespace DiiL.Serene.Aoc {
    
    @Serenity.Decorators.registerClass()
    export class RewardMonthyStatisticalGrid extends Serenity.EntityGrid<RewardMonthyStatisticalRow, any> {
        protected getColumnsKey() { return 'Aoc.RewardMonthyStatistical'; }
        protected getDialogType() { return RewardMonthyStatisticalDialog; }
        protected getIdProperty() { return RewardMonthyStatisticalRow.idProperty; }
        protected getLocalTextPrefix() { return RewardMonthyStatisticalRow.localTextPrefix; }
        protected getService() { return RewardMonthyStatisticalService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }

        getButtons() {
            var buttons = super.getButtons();

            buttons.push(DiiL.Serene.Common.ExcelExportHelper.createToolButton({
                grid: this,
                onViewSubmit: () => this.onViewSubmit(),
                service: 'Aoc/RewardMonthyStatistical/ListExcel',
                separator: true
            }));

            buttons.push(DiiL.Serene.Common.PdfExportHelper.createToolButton({
                grid: this,
                onViewSubmit: () => this.onViewSubmit()
            }));

            return buttons;
        }
    }
}