namespace DiiL.Serene.Aoc {
    export interface ProductSerialRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
        Status?: CommonStatus;
        ProductLineId?: number;
        ProductLineName?: string;
        TenantId?: number;
        TenantName?: string;
    }

    export namespace ProductSerialRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ProductSerial';
        export const lookupKey = 'Aoc.ProductSerial';

        export function getLookup(): Q.Lookup<ProductSerialRow> {
            return Q.getLookup<ProductSerialRow>('Aoc.ProductSerial');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
            export declare const Status: string;
            export declare const ProductLineId: string;
            export declare const ProductLineName: string;
            export declare const TenantId: string;
            export declare const TenantName: string;
        }

        ['Id', 'Name', 'CreateTime', 'Status', 'ProductLineId', 'ProductLineName', 'TenantId', 'TenantName'].forEach(x => (<any>Fields)[x] = x);
    }
}

