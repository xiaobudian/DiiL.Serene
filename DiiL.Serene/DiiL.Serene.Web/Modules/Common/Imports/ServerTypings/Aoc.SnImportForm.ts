namespace DiiL.Serene.Aoc {
    export class SnImportForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SnImport';

    }

    export interface SnImportForm {
        UserId: Serenity.IntegerEditor;
        SellerId: Serenity.IntegerEditor;
        SellTime: Serenity.DateEditor;
        Score: Serenity.IntegerEditor;
        ProductVesionId: Serenity.IntegerEditor;
        ProductVesionName: Serenity.StringEditor;
        ProductExProperties: Serenity.StringEditor;
        ProductSerialId: Serenity.IntegerEditor;
        ProductSerialName: Serenity.StringEditor;
        ProductLineId: Serenity.IntegerEditor;
        ProductLineName: Serenity.StringEditor;
        ImportTime: Serenity.DateEditor;
        PlatformProviderManagerId: Serenity.IntegerEditor;
        AreaManagerId: Serenity.IntegerEditor;
        Year: Serenity.IntegerEditor;
        Month: Serenity.IntegerEditor;
        Sn: Serenity.StringEditor;
    }

    [['UserId', () => Serenity.IntegerEditor], ['SellerId', () => Serenity.IntegerEditor], ['SellTime', () => Serenity.DateEditor], ['Score', () => Serenity.IntegerEditor], ['ProductVesionId', () => Serenity.IntegerEditor], ['ProductVesionName', () => Serenity.StringEditor], ['ProductExProperties', () => Serenity.StringEditor], ['ProductSerialId', () => Serenity.IntegerEditor], ['ProductSerialName', () => Serenity.StringEditor], ['ProductLineId', () => Serenity.IntegerEditor], ['ProductLineName', () => Serenity.StringEditor], ['ImportTime', () => Serenity.DateEditor], ['PlatformProviderManagerId', () => Serenity.IntegerEditor], ['AreaManagerId', () => Serenity.IntegerEditor], ['Year', () => Serenity.IntegerEditor], ['Month', () => Serenity.IntegerEditor], ['Sn', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(SnImportForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

