namespace DiiL.Serene.Aoc {
    export interface SnGenerateRow {
        Id?: number;
        ProductVersionId?: number;
        Prefix?: string;
        RegionBegin?: number;
        RegionEnd?: number;
        Count?: number;
        Length?: number;
        GenerateTime?: string;
        ManagerAccountId?: number;
        DateOfProduction?: string;
        TaskStatus?: string;
        ProductVersionName?: string;
        ProductVersionCreateTime?: string;
        ProductVersionStatus?: string;
        ProductVersionProductSerialId?: number;
        ManagerAccountUserName?: string;
        ManagerAccountStatus?: number;
        ManagerAccountRoleId?: number;
        ManagerAccountPassword?: string;
        ManagerAccountName?: string;
        ManagerAccountGender?: number;
        ManagerAccountIdCardNumber?: string;
        ManagerAccountEmail?: string;
        ManagerAccountMobilePhoneNumber?: string;
        ManagerAccountTelePhoneNumber?: string;
        ManagerAccountCreateTime?: string;
        ManagerAccountLastLoginTime?: string;
        ManagerAccountCompanyName?: string;
        ManagerAccountAddress?: string;
    }

    export namespace SnGenerateRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Prefix';
        export const localTextPrefix = 'Aoc.SnGenerate';

        export namespace Fields {
            export declare const Id: string;
            export declare const ProductVersionId: string;
            export declare const Prefix: string;
            export declare const RegionBegin: string;
            export declare const RegionEnd: string;
            export declare const Count: string;
            export declare const Length: string;
            export declare const GenerateTime: string;
            export declare const ManagerAccountId: string;
            export declare const DateOfProduction: string;
            export declare const TaskStatus: string;
            export declare const ProductVersionName: string;
            export declare const ProductVersionCreateTime: string;
            export declare const ProductVersionStatus: string;
            export declare const ProductVersionProductSerialId: string;
            export declare const ManagerAccountUserName: string;
            export declare const ManagerAccountStatus: string;
            export declare const ManagerAccountRoleId: string;
            export declare const ManagerAccountPassword: string;
            export declare const ManagerAccountName: string;
            export declare const ManagerAccountGender: string;
            export declare const ManagerAccountIdCardNumber: string;
            export declare const ManagerAccountEmail: string;
            export declare const ManagerAccountMobilePhoneNumber: string;
            export declare const ManagerAccountTelePhoneNumber: string;
            export declare const ManagerAccountCreateTime: string;
            export declare const ManagerAccountLastLoginTime: string;
            export declare const ManagerAccountCompanyName: string;
            export declare const ManagerAccountAddress: string;
        }

        ['Id', 'ProductVersionId', 'Prefix', 'RegionBegin', 'RegionEnd', 'Count', 'Length', 'GenerateTime', 'ManagerAccountId', 'DateOfProduction', 'TaskStatus', 'ProductVersionName', 'ProductVersionCreateTime', 'ProductVersionStatus', 'ProductVersionProductSerialId', 'ManagerAccountUserName', 'ManagerAccountStatus', 'ManagerAccountRoleId', 'ManagerAccountPassword', 'ManagerAccountName', 'ManagerAccountGender', 'ManagerAccountIdCardNumber', 'ManagerAccountEmail', 'ManagerAccountMobilePhoneNumber', 'ManagerAccountTelePhoneNumber', 'ManagerAccountCreateTime', 'ManagerAccountLastLoginTime', 'ManagerAccountCompanyName', 'ManagerAccountAddress'].forEach(x => (<any>Fields)[x] = x);
    }
}

