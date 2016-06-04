namespace DiiL.Serene.Aoc {
    export class ProductLineForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ProductLine';

    }

    export interface ProductLineForm {
        Name: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
        Status: Serenity.EnumEditor;
    }

    [['Name', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor], ['Status', () => Serenity.EnumEditor]].forEach(x => Object.defineProperty(ProductLineForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

