
namespace DiiL.Serene.Aoc {

    @Serenity.Decorators.registerClass()
    export class SnGrid extends Serenity.EntityGrid<SnRow, any> {
        protected getColumnsKey() { return 'Aoc.Sn'; }
        protected getDialogType() { return SnDialog; }
        protected getIdProperty() { return SnRow.idProperty; }
        protected getLocalTextPrefix() { return SnRow.localTextPrefix; }
        protected getService() { return SnService.baseUrl; }

        constructor(container: JQuery) {
            super(container);
        }
        //自定义button
        getButtons() {
            var buttons = super.getButtons();

            //buttons.push(DiiL.Serene.Common.ExcelExportHelper.createToolButton({
            //    grid: this,
            //    onViewSubmit: () => this.onViewSubmit(),
            //    service: 'Northwind/Customer/ListExcel',
            //    separator: true
            //}));

            //buttons.push(DiiL.Serene.Common.PdfExportHelper.createToolButton({
            //    grid: this,
            //    onViewSubmit: () => this.onViewSubmit()
            //}));
            buttons.shift();
            return buttons;
        }

    }
}