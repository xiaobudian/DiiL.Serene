namespace DiiL.Serene.Aoc {
    export interface RegionRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
    }

    export namespace RegionRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.Region';
        export const lookupKey = 'Aoc.Region';

        export function getLookup(): Q.Lookup<RegionRow> {
            return Q.getLookup<RegionRow>('Aoc.Region');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
        }

        ['Id', 'Name', 'CreateTime'].forEach(x => (<any>Fields)[x] = x);
    }
}

