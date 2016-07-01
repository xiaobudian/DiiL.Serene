namespace DiiL.Serene.Aoc {
    export interface SnGenerateRow {
        Id?: number;
        ProductVersionId?: number;
        Prefix?: string;
        RegionBegin?: number;
        RegionEnd?: number;
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
        }

        ['Id', 'ProductVersionId', 'Prefix', 'RegionBegin', 'RegionEnd', 'Length', 'GenerateTime', 'ManagerAccountId', 'DateOfProduction', 'TaskStatus', 'ProductVersionName', 'ProductVersionCreateTime', 'ProductVersionStatus', 'ProductVersionProductSerialId', 'ManagerAccountUserName'].forEach(x => (<any>Fields)[x] = x);
    }
}

