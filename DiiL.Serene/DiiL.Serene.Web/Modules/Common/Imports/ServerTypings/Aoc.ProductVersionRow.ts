namespace DiiL.Serene.Aoc {
    export interface ProductVersionRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
        Status?: CommonStatus;
        ProductSerialId?: number;
        ProductSerialName?: string;
        ProductLineId?: number;
        ProductLineName?: string;
        TenantId?: number;
        TenantName?: string;
    }

    export namespace ProductVersionRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ProductVersion';
        export const lookupKey = 'Aoc.ProductVersion';

        export function getLookup(): Q.Lookup<ProductVersionRow> {
            return Q.getLookup<ProductVersionRow>('Aoc.ProductVersion');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
            export declare const Status: string;
            export declare const ProductSerialId: string;
            export declare const ProductSerialName: string;
            export declare const ProductLineId: string;
            export declare const ProductLineName: string;
            export declare const TenantId: string;
            export declare const TenantName: string;
        }

        ['Id', 'Name', 'CreateTime', 'Status', 'ProductSerialId', 'ProductSerialName', 'ProductLineId', 'ProductLineName', 'TenantId', 'TenantName'].forEach(x => (<any>Fields)[x] = x);
    }
}

