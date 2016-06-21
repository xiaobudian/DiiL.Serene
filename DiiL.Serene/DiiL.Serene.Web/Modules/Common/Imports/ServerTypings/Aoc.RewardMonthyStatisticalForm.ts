

namespace DiiL.Serene.Aoc {
    export class RewardMonthyStatisticalForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.RewardMonthyStatistical';
    }

    export interface RewardMonthyStatisticalForm {
        UserId: Serenity.IntegerEditor;
        PlatformProviderId: Serenity.IntegerEditor;
        PolicyId: Serenity.IntegerEditor;
        TaskId: Serenity.IntegerEditor;
        Month: Serenity.IntegerEditor;
        Year: Serenity.IntegerEditor;
        MonthAndYear: Serenity.StringEditor;
        ShopGradeId: Serenity.IntegerEditor;
        TotalAmountRatio: Serenity.StringEditor;
        TotalAmount: Serenity.IntegerEditor;
        TotalRewardMoney: Serenity.DecimalEditor;
        SmAomout: Serenity.IntegerEditor;
        SmAomoutRatio: Serenity.StringEditor;
        SmRewardMoney: Serenity.DecimalEditor;
        TvAmount: Serenity.IntegerEditor;
        TvAmountRatio: Serenity.StringEditor;
        TvRewardMoney: Serenity.DecimalEditor;
        RealShopAppearanceScore: Serenity.IntegerEditor;
        RealShopAppearanceRewardMoney: Serenity.DecimalEditor;
        StatisticalTime: Serenity.DateEditor;
        StatisticalRemark: Serenity.StringEditor;
        FinalPolicyMoney: Serenity.DecimalEditor;
        FinalSumMoney: Serenity.DecimalEditor;
        FinalMaxMoney: Serenity.DecimalEditor;
        AreaManagerId: Serenity.IntegerEditor;
        UserSpecialAward: Serenity.DecimalEditor;
        PlatformSpecialAward: Serenity.DecimalEditor;
        SpecialAmountRate: Serenity.StringEditor;
        SpecialAmount: Serenity.IntegerEditor;
        ScoreOfMonth: Serenity.IntegerEditor;
        ScoreOfMonthRatio: Serenity.StringEditor;
        RecognizedAmount: Serenity.DecimalEditor;
        IsReceivedConfirmation: Serenity.BooleanEditor;
        IsConfirmPrototypeAmountunt: Serenity.BooleanEditor;
        IsConfirmSpecialAmount: Serenity.BooleanEditor;
        IsConfirmBrandAmount: Serenity.BooleanEditor;
        GdpAmountRatio: Serenity.StringEditor;
        GdpAmount: Serenity.IntegerEditor;
        GdpRewardMoney: Serenity.DecimalEditor;
        ScoreRewardMoney: Serenity.DecimalEditor;
        TenantId: Serenity.IntegerEditor;
    }

    [['Id', () => Serenity.IntegerEditor], ['UserId', () => Serenity.IntegerEditor], ['PlatformProviderId', () => Serenity.IntegerEditor], ['PolicyId', () => Serenity.IntegerEditor], ['TaskId', () => Serenity.IntegerEditor], ['Month', () => Serenity.IntegerEditor], ['Year', () => Serenity.IntegerEditor], ['MonthAndYear', () => Serenity.StringEditor], ['ShopGradeId', () => Serenity.IntegerEditor], ['TotalAmountRatio', () => Serenity.StringEditor], ['TotalAmount', () => Serenity.IntegerEditor], ['TotalRewardMoney', () => Serenity.DecimalEditor], ['SmAomout', () => Serenity.IntegerEditor], ['SmAomoutRatio', () => Serenity.StringEditor], ['SmRewardMoney', () => Serenity.DecimalEditor], ['TvAmount', () => Serenity.IntegerEditor], ['TvAmountRatio', () => Serenity.StringEditor], ['TvRewardMoney', () => Serenity.DecimalEditor], ['RealShopAppearanceScore', () => Serenity.IntegerEditor], ['RealShopAppearanceRewardMoney', () => Serenity.DecimalEditor], ['StatisticalTime', () => Serenity.DateEditor], ['StatisticalRemark', () => Serenity.StringEditor], ['FinalPolicyMoney', () => Serenity.DecimalEditor], ['FinalSumMoney', () => Serenity.DecimalEditor], ['FinalMaxMoney', () => Serenity.DecimalEditor], ['AreaManagerId', () => Serenity.IntegerEditor], ['UserSpecialAward', () => Serenity.DecimalEditor], ['PlatformSpecialAward', () => Serenity.DecimalEditor], ['SpecialAmountRate', () => Serenity.StringEditor], ['SpecialAmount', () => Serenity.IntegerEditor], ['ScoreOfMonth', () => Serenity.IntegerEditor], ['ScoreOfMonthRatio', () => Serenity.StringEditor], ['RecognizedAmount', () => Serenity.DecimalEditor], ['IsReceivedConfirmation', () => Serenity.BooleanEditor], ['IsConfirmPrototypeAmountunt', () => Serenity.BooleanEditor], ['IsConfirmSpecialAmount', () => Serenity.BooleanEditor], ['IsConfirmBrandAmount', () => Serenity.BooleanEditor], ['GdpAmountRatio', () => Serenity.StringEditor], ['GdpAmount', () => Serenity.IntegerEditor], ['GdpRewardMoney', () => Serenity.DecimalEditor], ['ScoreRewardMoney', () => Serenity.DecimalEditor], ['TenantId', () => Serenity.IntegerEditor]].forEach(x => Object.defineProperty(RewardMonthyStatisticalForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}