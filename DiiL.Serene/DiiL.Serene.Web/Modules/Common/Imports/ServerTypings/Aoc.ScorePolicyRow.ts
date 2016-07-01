namespace DiiL.Serene.Aoc {
    export interface ScorePolicyRow {
        Id?: number;
        ProductVersionId?: number;
        BeginTime?: string;
        EndTime?: string;
        Score?: number;
        Description?: string;
        Status?: CommonStatus;
        Size?: string;
        ProductVersionName?: string;
        ProductSerialId?: number;
        ProductLineId?: number;
    }

    export namespace ScorePolicyRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Description';
        export const localTextPrefix = 'Aoc.ScorePolicy';

        export namespace Fields {
            export declare const Id: string;
            export declare const ProductVersionId: string;
            export declare const BeginTime: string;
            export declare const EndTime: string;
            export declare const Score: string;
            export declare const Description: string;
            export declare const Status: string;
            export declare const Size: string;
            export declare const ProductVersionName: string;
            export declare const ProductSerialId: string;
            export declare const ProductLineId: string;
        }

        ['Id', 'ProductVersionId', 'BeginTime', 'EndTime', 'Score', 'Description', 'Status', 'Size', 'ProductVersionName', 'ProductSerialId', 'ProductLineId'].forEach(x => (<any>Fields)[x] = x);
    }
}

