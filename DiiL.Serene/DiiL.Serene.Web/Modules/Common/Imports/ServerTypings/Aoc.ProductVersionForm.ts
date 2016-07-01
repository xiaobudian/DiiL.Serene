namespace DiiL.Serene.Aoc {
    export class ProductVersionForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ProductVersion';

    }

    export interface ProductVersionForm {
        TenantId: Serenity.LookupEditor;
        ProductLineId: Serenity.LookupEditor;
        ProductSerialId: Serenity.LookupEditor;
        Name: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
        Status: Serenity.EnumEditor;
    }

    [['TenantId', () => Serenity.LookupEditor], ['ProductLineId', () => Serenity.LookupEditor], ['ProductSerialId', () => Serenity.LookupEditor], ['Name', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor], ['Status', () => Serenity.EnumEditor]].forEach(x => Object.defineProperty(ProductVersionForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

