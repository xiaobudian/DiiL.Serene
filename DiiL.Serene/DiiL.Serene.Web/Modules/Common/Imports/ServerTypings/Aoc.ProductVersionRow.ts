namespace DiiL.Serene.Aoc {
    export interface ProductVersionRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
        Status?: CommonStatus;
        ProductSerialId?: number;
        ProductSerialName?: string;
        ProductSerialCreateTime?: string;
        ProductSerialStatus?: string;
        ProductSerialProductLineId?: number;
    }

    export namespace ProductVersionRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ProductVersion';

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
            export declare const Status: string;
            export declare const ProductSerialId: string;
            export declare const ProductSerialName: string;
            export declare const ProductSerialCreateTime: string;
            export declare const ProductSerialStatus: string;
            export declare const ProductSerialProductLineId: string;
        }

        ['Id', 'Name', 'CreateTime', 'Status', 'ProductSerialId', 'ProductSerialName', 'ProductSerialCreateTime', 'ProductSerialStatus', 'ProductSerialProductLineId'].forEach(x => (<any>Fields)[x] = x);
    }
}

