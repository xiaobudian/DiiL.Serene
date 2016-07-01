namespace DiiL.Serene.Aoc {
    export class ManagerAccountForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.ManagerAccount';

    }

    export interface ManagerAccountForm {
        RegionId: Serenity.LookupEditor;
        ProvinceId: Serenity.LookupEditor;
        TenantId: Serenity.LookupEditor;
        RoleId: Serenity.LookupEditor;
        UserName: Serenity.StringEditor;
        Status: Serenity.EnumEditor;
        Name: Serenity.StringEditor;
        Gender: Serenity.IntegerEditor;
        IdCardNumber: Serenity.StringEditor;
        Email: Serenity.StringEditor;
        MobilePhoneNumber: Serenity.StringEditor;
        TelePhoneNumber: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
        LastLoginTime: Serenity.DateEditor;
        CompanyName: Serenity.StringEditor;
        Address: Serenity.StringEditor;
    }

    [['RegionId', () => Serenity.LookupEditor], ['ProvinceId', () => Serenity.LookupEditor], ['TenantId', () => Serenity.LookupEditor], ['RoleId', () => Serenity.LookupEditor], ['UserName', () => Serenity.StringEditor], ['Status', () => Serenity.EnumEditor], ['Name', () => Serenity.StringEditor], ['Gender', () => Serenity.IntegerEditor], ['IdCardNumber', () => Serenity.StringEditor], ['Email', () => Serenity.StringEditor], ['MobilePhoneNumber', () => Serenity.StringEditor], ['TelePhoneNumber', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor], ['LastLoginTime', () => Serenity.DateEditor], ['CompanyName', () => Serenity.StringEditor], ['Address', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(ManagerAccountForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

