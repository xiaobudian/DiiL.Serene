

namespace DiiL.Serene.Aoc {
    export class SDistrictForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.SDistrict';
    }

    export interface SDistrictForm {
        DistrictName: Serenity.StringEditor;
        CityId: Serenity.IntegerEditor;
    }

    [['DistrictId', () => Serenity.IntegerEditor], ['DistrictName', () => Serenity.StringEditor], ['CityId', () => Serenity.IntegerEditor]].forEach(x => Object.defineProperty(SDistrictForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}