namespace DiiL.Serene.Aoc {
    export class ScorePolicyForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ScorePolicy';

    }

    export interface ScorePolicyForm {
        ProductLineId: Serenity.LookupEditor;
        ProductSerialId: Serenity.LookupEditor;
        ProductVersionId: Serenity.LookupEditor;
        Score: Serenity.IntegerEditor;
        Size: Serenity.StringEditor;
        BeginTime: Serenity.DateEditor;
        EndTime: Serenity.DateEditor;
        Description: Serenity.StringEditor;
        Status: Serenity.EnumEditor;
    }

    [['ProductLineId', () => Serenity.LookupEditor], ['ProductSerialId', () => Serenity.LookupEditor], ['ProductVersionId', () => Serenity.LookupEditor], ['Score', () => Serenity.IntegerEditor], ['Size', () => Serenity.StringEditor], ['BeginTime', () => Serenity.DateEditor], ['EndTime', () => Serenity.DateEditor], ['Description', () => Serenity.StringEditor], ['Status', () => Serenity.EnumEditor]].forEach(x => Object.defineProperty(ScorePolicyForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

