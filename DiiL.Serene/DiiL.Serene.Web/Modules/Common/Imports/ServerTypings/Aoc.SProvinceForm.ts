namespace DiiL.Serene.Aoc {
    export class SProvinceForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SProvince';

    }

    export interface SProvinceForm {
        RegionId: Serenity.LookupEditor;
        ProvinceName: Serenity.StringEditor;
    }

    [['RegionId', () => Serenity.LookupEditor], ['ProvinceName', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(SProvinceForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

