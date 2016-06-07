

namespace DiiL.Serene.Aoc {
    export class ScorePolicyForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ScorePolicy';
    }

    export interface ScorePolicyForm {
        ProductVersionId: Serenity.IntegerEditor;
        BeginTime: Serenity.DateEditor;
        EndTime: Serenity.DateEditor;
        Score: Serenity.IntegerEditor;
        Description: Serenity.StringEditor;
        Status: Serenity.StringEditor;
        Size: Serenity.StringEditor;
        Category: Serenity.IntegerEditor;
    }

    [['Id', () => Serenity.IntegerEditor], ['ProductVersionId', () => Serenity.IntegerEditor], ['BeginTime', () => Serenity.DateEditor], ['EndTime', () => Serenity.DateEditor], ['Score', () => Serenity.IntegerEditor], ['Description', () => Serenity.StringEditor], ['Status', () => Serenity.StringEditor], ['Size', () => Serenity.StringEditor], ['Category', () => Serenity.IntegerEditor]].forEach(x => Object.defineProperty(ScorePolicyForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}