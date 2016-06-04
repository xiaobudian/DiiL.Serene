namespace DiiL.Serene.Aoc {
    export interface ProductLineRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
        Status?: CommonStatus;
    }

    export namespace ProductLineRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ProductLine';
        export const lookupKey = 'Aoc.ProductLine';

        export function getLookup(): Q.Lookup<ProductLineRow> {
            return Q.getLookup<ProductLineRow>('Aoc.ProductLine');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
            export declare const Status: string;
        }

        ['Id', 'Name', 'CreateTime', 'Status'].forEach(x => (<any>Fields)[x] = x);
    }
}

