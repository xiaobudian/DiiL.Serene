namespace DiiL.Serene.Aoc {
    export interface SnRow {
        Number?: string;
        GenerateTaskId?: number;
        ProductVersionId?: number;
        ProductVersionName?: string;
        SnPrefix?: string;
        SnValue?: number;
        SnLast2Char?: string;
        Status?: string;
        GenerateTaskGenerateTime?: string;
    }

    export namespace SnRow {
        export const idProperty = 'Number';
        export const nameProperty = 'Number';
        export const localTextPrefix = 'Aoc.Sn';

        export namespace Fields {
            export declare const Number: string;
            export declare const GenerateTaskId: string;
            export declare const ProductVersionId: string;
            export declare const ProductVersionName: string;
            export declare const SnPrefix: string;
            export declare const SnValue: string;
            export declare const SnLast2Char: string;
            export declare const Status: string;
            export declare const GenerateTaskGenerateTime: string;
        }

        ['Number', 'GenerateTaskId', 'ProductVersionId', 'ProductVersionName', 'SnPrefix', 'SnValue', 'SnLast2Char', 'Status', 'GenerateTaskGenerateTime'].forEach(x => (<any>Fields)[x] = x);
    }
}

