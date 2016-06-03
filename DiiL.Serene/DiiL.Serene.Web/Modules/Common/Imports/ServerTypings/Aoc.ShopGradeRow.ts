namespace DiiL.Serene.Aoc {
    export interface ShopGradeRow {
        Id?: number;
        ParentId?: number;
        Name?: string;
        MaxSnNumber?: number;
        MaxStreetShopMoney?: number;
        MaxFreeTrialCount?: number;
        Status?: string;
        Category?: number;
        SpecialAmount?: number;
        Order?: number;
        GradeName?: string;
        CategoryName?: string;
        CategoryCreatetime?: string;
        CategoryDescription?: string;
    }

    export namespace ShopGradeRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ShopGrade';
        export const lookupKey = 'Aoc.ShopGrade';

        export function getLookup(): Q.Lookup<ShopGradeRow> {
            return Q.getLookup<ShopGradeRow>('Aoc.ShopGrade');
        }

        export namespace Fields {
            export declare const Id: string;
            export declare const ParentId: string;
            export declare const Name: string;
            export declare const MaxSnNumber: string;
            export declare const MaxStreetShopMoney: string;
            export declare const MaxFreeTrialCount: string;
            export declare const Status: string;
            export declare const Category: string;
            export declare const SpecialAmount: string;
            export declare const Order: string;
            export declare const GradeName: string;
            export declare const CategoryName: string;
            export declare const CategoryCreatetime: string;
            export declare const CategoryDescription: string;
        }

        ['Id', 'ParentId', 'Name', 'MaxSnNumber', 'MaxStreetShopMoney', 'MaxFreeTrialCount', 'Status', 'Category', 'SpecialAmount', 'Order', 'GradeName', 'CategoryName', 'CategoryCreatetime', 'CategoryDescription'].forEach(x => (<any>Fields)[x] = x);
    }
}

