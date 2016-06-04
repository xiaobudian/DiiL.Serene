namespace DiiL.Serene.Aoc {
    export class ProductSerialForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ProductSerial';

    }

    export interface ProductSerialForm {
        Name: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
        Status: Serenity.EnumEditor;
        ProductLineId: Serenity.LookupEditor;
    }

    [['Name', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor], ['Status', () => Serenity.EnumEditor], ['ProductLineId', () => Serenity.LookupEditor]].forEach(x => Object.defineProperty(ProductSerialForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

