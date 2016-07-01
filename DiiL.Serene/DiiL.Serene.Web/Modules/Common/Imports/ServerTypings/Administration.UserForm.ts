namespace DiiL.Serene.Administration {
    export class UserForm extends Serenity.PrefixedContext {
        static formKey = 'Administration.User';

    }

    export interface UserForm {
        TenantId: Serenity.LookupEditor;
        Username: Serenity.StringEditor;
        DisplayName: Serenity.StringEditor;
        Email: Serenity.EmailEditor;
        InsertDate: Serenity.DateEditor;
        InsertUserId: Serenity.IntegerEditor;
        UpdateDate: Serenity.DateEditor;
        UpdateUserId: Serenity.IntegerEditor;
        LastDirectoryUpdate: Serenity.DateEditor;
        IsActive: Serenity.IntegerEditor;
        Gender: Serenity.IntegerEditor;
        IdCardNumber: Serenity.StringEditor;
        MobilePhoneNumber: Serenity.StringEditor;
        TelePhoneNumber: Serenity.StringEditor;
        CompanyName: Serenity.StringEditor;
        Address: Serenity.StringEditor;
        RegionId: Serenity.IntegerEditor;
        ProvinceId: Serenity.IntegerEditor;
        Password: Serenity.PasswordEditor;
        PasswordConfirm: Serenity.PasswordEditor;
        Source: Serenity.StringEditor;
    }

    [['TenantId', () => Serenity.LookupEditor], ['Username', () => Serenity.StringEditor], ['DisplayName', () => Serenity.StringEditor], ['Email', () => Serenity.EmailEditor], ['InsertDate', () => Serenity.DateEditor], ['InsertUserId', () => Serenity.IntegerEditor], ['UpdateDate', () => Serenity.DateEditor], ['UpdateUserId', () => Serenity.IntegerEditor], ['LastDirectoryUpdate', () => Serenity.DateEditor], ['IsActive', () => Serenity.IntegerEditor], ['Gender', () => Serenity.IntegerEditor], ['IdCardNumber', () => Serenity.StringEditor], ['MobilePhoneNumber', () => Serenity.StringEditor], ['TelePhoneNumber', () => Serenity.StringEditor], ['CompanyName', () => Serenity.StringEditor], ['Address', () => Serenity.StringEditor], ['RegionId', () => Serenity.IntegerEditor], ['ProvinceId', () => Serenity.IntegerEditor], ['Password', () => Serenity.PasswordEditor], ['PasswordConfirm', () => Serenity.PasswordEditor], ['Source', () => Serenity.StringEditor]].forEach(x => Object.defineProperty(UserForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}

