namespace DiiL.Serene.Aoc {
    export interface SnRow {
        Number?: string;
        GenerateTaskId?: number;
        ProductVersionId?: number;
        SnPrefix?: string;
        SnValue?: number;
        SnLast2Char?: string;
        Status?: string;
        GenerateTaskProductVersionId?: number;
        GenerateTaskPrefix?: string;
        GenerateTaskRegionBegin?: number;
        GenerateTaskRegionEnd?: number;
        GenerateTaskCount?: number;
        GenerateTaskLength?: number;
        GenerateTaskGenerateTime?: string;
        GenerateTaskManagerAccountId?: number;
        GenerateTaskDateOfProduction?: string;
        GenerateTaskTaskStatus?: string;
    }

    export namespace SnRow {
        export const idProperty = 'Number';
        export const nameProperty = 'Number';
        export const localTextPrefix = 'Aoc.Sn';

        export namespace Fields {
            export declare const Number: string;
            export declare const GenerateTaskId: string;
            export declare const ProductVersionId: string;
            export declare const SnPrefix: string;
            export declare const SnValue: string;
            export declare const SnLast2Char: string;
            export declare const Status: string;
            export declare const GenerateTaskProductVersionId: string;
            export declare const GenerateTaskPrefix: string;
            export declare const GenerateTaskRegionBegin: string;
            export declare const GenerateTaskRegionEnd: string;
            export declare const GenerateTaskCount: string;
            export declare const GenerateTaskLength: string;
            export declare const GenerateTaskGenerateTime: string;
            export declare const GenerateTaskManagerAccountId: string;
            export declare const GenerateTaskDateOfProduction: string;
            export declare const GenerateTaskTaskStatus: string;
        }

        ['Number', 'GenerateTaskId', 'ProductVersionId', 'SnPrefix', 'SnValue', 'SnLast2Char', 'Status', 'GenerateTaskProductVersionId', 'GenerateTaskPrefix', 'GenerateTaskRegionBegin', 'GenerateTaskRegionEnd', 'GenerateTaskCount', 'GenerateTaskLength', 'GenerateTaskGenerateTime', 'GenerateTaskManagerAccountId', 'GenerateTaskDateOfProduction', 'GenerateTaskTaskStatus'].forEach(x => (<any>Fields)[x] = x);
    }
}

