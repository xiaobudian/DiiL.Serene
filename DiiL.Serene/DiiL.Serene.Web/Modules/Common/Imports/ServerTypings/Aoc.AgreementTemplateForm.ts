

namespace DiiL.Serene.Aoc {
    export class AgreementTemplateForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.AgreementTemplate';
    }

    export interface AgreementTemplateForm {
        AgreementType: Serenity.IntegerEditor;
        ShopGradeId: Serenity.IntegerEditor;
        ApproveFlow: Serenity.StringEditor;
        Content: Serenity.StringEditor;
        Status: Serenity.IntegerEditor;
        Type: Serenity.StringEditor;
    }

    [['AgreementType', () => Serenity.IntegerEditor], ['ShopGradeId', () => Serenity.IntegerEditor], ['ApproveFlow', () => Serenity.StringEditor], ['Content', () => Serenity.StringEditor], ['Status', () => Serenity.IntegerEditor], ['Type', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(AgreementTemplateForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}