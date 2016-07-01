namespace DiiL.Serene.Aoc {
    export class StatusCollectionForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.StatusCollection';

    }

    export interface StatusCollectionForm {
        Name: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
    }

    [['Name', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor]].forEach(x => Object.defineProperty(StatusCollectionForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

