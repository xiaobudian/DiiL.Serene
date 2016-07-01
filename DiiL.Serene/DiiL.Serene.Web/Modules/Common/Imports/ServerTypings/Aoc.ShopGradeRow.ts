namespace DiiL.Serene.Aoc {
    export interface ShopGradeRow {
        Id?: number;
        ParentId?: number;
        Name?: string;
        MaxSnNumber?: number;
        MaxStreetShopMoney?: number;
        MaxFreeTrialCount?: number;
        Status?: CommonStatus;
        SpecialAmount?: number;
        Order?: number;
        GradeName?: string;
        TenantId?: number;
        TenantName?: string;
    }

    export namespace ShopGradeRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ShopGrade';
        export const lookupKey = 'Aoc.ShopGradeChildren';

        export function getLookup(): Q.Lookup<ShopGradeRow> {
            return Q.getLookup<ShopGradeRow>('Aoc.ShopGradeChildren');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const ParentId: string;
            export declare const Name: string;
            export declare const MaxSnNumber: string;
            export declare const MaxStreetShopMoney: string;
            export declare const MaxFreeTrialCount: string;
            export declare const Status: string;
            export declare const SpecialAmount: string;
            export declare const Order: string;
            export declare const GradeName: string;
            export declare const TenantId: string;
            export declare const TenantName: string;
        }

        ['Id', 'ParentId', 'Name', 'MaxSnNumber', 'MaxStreetShopMoney', 'MaxFreeTrialCount', 'Status', 'SpecialAmount', 'Order', 'GradeName', 'TenantId', 'TenantName'].forEach(x => (<any>Fields)[x] = x);
    }
}

