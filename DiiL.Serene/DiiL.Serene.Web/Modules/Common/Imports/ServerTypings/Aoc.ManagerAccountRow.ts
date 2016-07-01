namespace DiiL.Serene.Aoc {
    export interface ManagerAccountRow {
        Id?: number;
        UserName?: string;
        Status?: ManagerStatus;
        RoleId?: number;
        Password?: string;
        Name?: string;
        Gender?: number;
        IdCardNumber?: string;
        Email?: string;
        MobilePhoneNumber?: string;
        TelePhoneNumber?: string;
        CreateTime?: string;
        LastLoginTime?: string;
        CompanyName?: string;
        Address?: string;
        RoleName?: string;
        RoleDescription?: string;
        RegionId?: number;
        RegionName?: string;
        ProvinceId?: number;
        ProvinceName?: string;
        TenantId?: number;
        TenantName?: string;
    }

    export namespace ManagerAccountRow {
        export const idProperty = 'Id';
        export const nameProperty = 'UserName';
        export const localTextPrefix = 'Aoc.ManagerAccount';
        export const lookupKey = 'Aoc.ManagerAccount';

        export function getLookup(): Q.Lookup<ManagerAccountRow> {
            return Q.getLookup<ManagerAccountRow>('Aoc.ManagerAccount');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const UserName: string;
            export declare const Status: string;
            export declare const RoleId: string;
            export declare const Password: string;
            export declare const Name: string;
            export declare const Gender: string;
            export declare const IdCardNumber: string;
            export declare const Email: string;
            export declare const MobilePhoneNumber: string;
            export declare const TelePhoneNumber: string;
            export declare const CreateTime: string;
            export declare const LastLoginTime: string;
            export declare const CompanyName: string;
            export declare const Address: string;
            export declare const RoleName: string;
            export declare const RoleDescription: string;
            export declare const RegionId: string;
            export declare const RegionName: string;
            export declare const ProvinceId: string;
            export declare const ProvinceName: string;
            export declare const TenantId: string;
            export declare const TenantName: string;
        }

        ['Id', 'UserName', 'Status', 'RoleId', 'Password', 'Name', 'Gender', 'IdCardNumber', 'Email', 'MobilePhoneNumber', 'TelePhoneNumber', 'CreateTime', 'LastLoginTime', 'CompanyName', 'Address', 'RoleName', 'RoleDescription', 'RegionId', 'RegionName', 'ProvinceId', 'ProvinceName', 'TenantId', 'TenantName'].forEach(x => (<any>Fields)[x] = x);
    }
}

