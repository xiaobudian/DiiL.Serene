namespace DiiL.Serene.Aoc {
    export class SnForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.Sn';

    }

    export interface SnForm {
        GenerateTaskId: Serenity.IntegerEditor;
        ProductVersionId: Serenity.IntegerEditor;
        SnPrefix: Serenity.StringEditor;
        SnValue: Serenity.IntegerEditor;
        SnLast2Char: Serenity.StringEditor;
        Status: Serenity.StringEditor;
    }

    [['GenerateTaskId', () => Serenity.IntegerEditor], ['ProductVersionId', () => Serenity.IntegerEditor], ['SnPrefix', () => Serenity.StringEditor], ['SnValue', () => Serenity.IntegerEditor], ['SnLast2Char', () => Serenity.StringEditor], ['Status', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(SnForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

