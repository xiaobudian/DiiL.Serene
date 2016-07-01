namespace DiiL.Serene.Aoc {
    export class SCityForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SCity';

    }

    export interface SCityForm {
        ProvinceId: Serenity.LookupEditor;
        CityName: Serenity.StringEditor;
        AreaCode: Serenity.StringEditor;
        ZipCode: Serenity.StringEditor;
    }

    [['ProvinceId', () => Serenity.LookupEditor], ['CityName', () => Serenity.StringEditor], ['AreaCode', () => Serenity.StringEditor], ['ZipCode', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(SCityForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

