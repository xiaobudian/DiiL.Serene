namespace DiiL.Serene.Aoc {
    export class AgreementTemplateForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.AgreementTemplate';

    }

    export interface AgreementTemplateForm {
        ShopGradeId: Serenity.LookupEditor;
        AgreementType: Serenity.EnumEditor;
        ApproveFlow: Serenity.StringEditor;
        Content: Serenity.TextAreaEditor;
        Status: Serenity.EnumEditor;
        Type: Serenity.StringEditor;
    }

    [['ShopGradeId', () => Serenity.LookupEditor], ['AgreementType', () => Serenity.EnumEditor], ['ApproveFlow', () => Serenity.StringEditor], ['Content', () => Serenity.TextAreaEditor], ['Status', () => Serenity.EnumEditor], ['Type', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(AgreementTemplateForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

