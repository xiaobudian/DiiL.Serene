

namespace DiiL.Serene.Aoc {
    export class SemRewardPolicyForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SemRewardPolicy';
    }

    export interface SemRewardPolicyForm {
        ShopGradeId: Serenity.IntegerEditor;
        TotalAmount: Serenity.IntegerEditor;
        Status: Serenity.IntegerEditor;
        EditTime: Serenity.DateEditor;
        Begintime: Serenity.DateEditor;
        Endtime: Serenity.DateEditor;
        Amount: Serenity.StringEditor;
        MaxScore: Serenity.IntegerEditor;
        NotStreetReward: Serenity.DecimalEditor;
        StreetReward: Serenity.DecimalEditor;
        TenantId: Serenity.IntegerEditor;
    }

    [['PolicyId', () => Serenity.IntegerEditor], ['ShopGradeId', () => Serenity.IntegerEditor], ['TotalAmount', () => Serenity.IntegerEditor], ['Status', () => Serenity.IntegerEditor], ['EditTime', () => Serenity.DateEditor], ['Begintime', () => Serenity.DateEditor], ['Endtime', () => Serenity.DateEditor], ['Amount', () => Serenity.StringEditor], ['MaxScore', () => Serenity.IntegerEditor], ['NotStreetReward', () => Serenity.DecimalEditor], ['StreetReward', () => Serenity.DecimalEditor], ['TenantId', () => Serenity.IntegerEditor]].forEach(x => Object.defineProperty(SemRewardPolicyForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}