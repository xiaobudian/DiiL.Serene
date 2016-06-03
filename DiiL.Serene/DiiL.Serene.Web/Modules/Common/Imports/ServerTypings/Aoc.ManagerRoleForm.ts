namespace DiiL.Serene.Aoc {
    export class ManagerRoleForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ManagerRole';

    }

    export interface ManagerRoleForm {
        Name: Serenity.StringEditor;
        Description: Serenity.StringEditor;
    }

    [['Name', () => Serenity.StringEditor], ['Description', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(ManagerRoleForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

