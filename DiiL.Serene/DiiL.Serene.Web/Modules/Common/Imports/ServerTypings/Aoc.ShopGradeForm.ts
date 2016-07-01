namespace DiiL.Serene.Aoc {
    export class ShopGradeForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ShopGrade';

    }

    export interface ShopGradeForm {
        TenantId: Serenity.LookupEditor;
        ParentId: Serenity.LookupEditor;
        Name: Serenity.StringEditor;
        MaxSnNumber: Serenity.IntegerEditor;
        MaxStreetShopMoney: Serenity.DecimalEditor;
        MaxFreeTrialCount: Serenity.IntegerEditor;
        Status: Serenity.EnumEditor;
        SpecialAmount: Serenity.IntegerEditor;
        Order: Serenity.IntegerEditor;
    }

    [['TenantId', () => Serenity.LookupEditor], ['ParentId', () => Serenity.LookupEditor], ['Name', () => Serenity.StringEditor], ['MaxSnNumber', () => Serenity.IntegerEditor], ['MaxStreetShopMoney', () => Serenity.DecimalEditor], ['MaxFreeTrialCount', () => Serenity.IntegerEditor], ['Status', () => Serenity.EnumEditor], ['SpecialAmount', () => Serenity.IntegerEditor], ['Order', () => Serenity.IntegerEditor]].forEach(x => Object.defineProperty(ShopGradeForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

