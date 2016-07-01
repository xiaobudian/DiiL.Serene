namespace DiiL.Serene.Aoc {
    export class TenantsForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.Tenants';

    }

    export interface TenantsForm {
        Name: Serenity.StringEditor;
    }

    [['Name', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(TenantsForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

