
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

        export namespace Fields {
            export declare const Id;
            export declare const Name;
            export declare const CreateTime;
        }

        ['Id', 'Name', 'CreateTime'].forEach(x => (<any>Fields)[x] = x);
    }
}

