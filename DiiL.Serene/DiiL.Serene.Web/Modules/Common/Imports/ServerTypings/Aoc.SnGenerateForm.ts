namespace DiiL.Serene.Aoc {
    export class SnGenerateForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SnGenerate';

    }

    export interface SnGenerateForm {
        ProductVersionId: Serenity.LookupEditor;
        Prefix: Serenity.StringEditor;
        RegionBegin: Serenity.IntegerEditor;
        RegionEnd: Serenity.IntegerEditor;
        Length: Serenity.IntegerEditor;
        GenerateTime: Serenity.DateEditor;
        DateOfProduction: Serenity.DateEditor;
        TaskStatus: Serenity.StringEditor;
    }

    [['ProductVersionId', () => Serenity.LookupEditor], ['Prefix', () => Serenity.StringEditor], ['RegionBegin', () => Serenity.IntegerEditor], ['RegionEnd', () => Serenity.IntegerEditor], ['Length', () => Serenity.IntegerEditor], ['GenerateTime', () => Serenity.DateEditor], ['DateOfProduction', () => Serenity.DateEditor], ['TaskStatus', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(SnGenerateForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

