namespace DiiL.Serene.Aoc {
    export interface TenantsRow {
        Id?: number;
        Name?: string;
    }

    export namespace TenantsRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.Tenants';
        export const lookupKey = 'Aoc.Tenants';

        export function getLookup(): Q.Lookup<TenantsRow> {
            return Q.getLookup<TenantsRow>('Aoc.Tenants');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
        }

        ['Id', 'Name'].forEach(x => (<any>Fields)[x] = x);
    }
}

