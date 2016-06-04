namespace DiiL.Serene.Aoc {
    export class AgreementTemplateForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.AgreementTemplate';

    }

    export interface AgreementTemplateForm {
        AgreementType: Serenity.EnumEditor;
        ShopGradId: Serenity.LookupEditor;
        ApproveFlow: Serenity.StringEditor;
        TemplateContent: Serenity.StringEditor;
        BookMarks: Serenity.StringEditor;
        YearOfDate: Serenity.IntegerEditor;
        IsValidate: Serenity.BooleanEditor;
        ExpiredTime: Serenity.DateEditor;
        Type: Serenity.StringEditor;
    }

    [['AgreementType', () => Serenity.EnumEditor], ['ShopGradId', () => Serenity.LookupEditor], ['ApproveFlow', () => Serenity.StringEditor], ['TemplateContent', () => Serenity.StringEditor], ['BookMarks', () => Serenity.StringEditor], ['YearOfDate', () => Serenity.IntegerEditor], ['IsValidate', () => Serenity.BooleanEditor], ['ExpiredTime', () => Serenity.DateEditor], ['Type', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(AgreementTemplateForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

