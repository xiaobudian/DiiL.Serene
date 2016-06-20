﻿

namespace DiiL.Serene.Aoc {
    export class RegionForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.Region';
    }

    export interface RegionForm {
        Name: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
    }

    [['Name', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor]].forEach(x => Object.defineProperty(RegionForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}