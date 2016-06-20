
namespace DiiL.Serene.Aoc {
    export interface TenantsRow {
        TenantId?: number;
        TenantName?: string;
    }

    export namespace TenantsRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.Tenants';

        export namespace Fields {
            export declare const TenantId;
            export declare const TenantName;
        }

        ['Id', 'Name'].forEach(x => (<any>Fields)[x] = x);
    }
}

