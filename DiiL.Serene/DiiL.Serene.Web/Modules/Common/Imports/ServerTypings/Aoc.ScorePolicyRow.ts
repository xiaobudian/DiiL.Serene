
namespace DiiL.Serene.Aoc {
    export interface ScorePolicyRow {
        Id?: number;
        ProductVersionId?: number;
        BeginTime?: string;
        EndTime?: string;
        Score?: number;
        Description?: string;
        Status?: string;
        Size?: string;
        Category?: number;
        ProductVersionName?: string;
        ProductVersionCreateTime?: string;
        ProductVersionStatus?: string;
        ProductVersionProductSerialId?: number;
        CategoryName?: string;
        CategoryCreatetime?: string;
        CategoryDescription?: string;
    }

    export namespace ScorePolicyRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Description';
        export const localTextPrefix = 'Aoc.ScorePolicy';

        export namespace Fields {
            export declare const Id;
            export declare const ProductVersionId;
            export declare const BeginTime;
            export declare const EndTime;
            export declare const Score;
            export declare const Description;
            export declare const Status;
            export declare const Size;
            export declare const Category;
            export declare const ProductVersionName: string;
            export declare const ProductVersionCreateTime: string;
            export declare const ProductVersionStatus: string;
            export declare const ProductVersionProductSerialId: string;
            export declare const CategoryName: string;
            export declare const CategoryCreatetime: string;
            export declare const CategoryDescription: string;
        }

        ['Id', 'ProductVersionId', 'BeginTime', 'EndTime', 'Score', 'Description', 'Status', 'Size', 'Category', 'ProductVersionName', 'ProductVersionCreateTime', 'ProductVersionStatus', 'ProductVersionProductSerialId', 'CategoryName', 'CategoryCreatetime', 'CategoryDescription'].forEach(x => (<any>Fields)[x] = x);
    }
}

