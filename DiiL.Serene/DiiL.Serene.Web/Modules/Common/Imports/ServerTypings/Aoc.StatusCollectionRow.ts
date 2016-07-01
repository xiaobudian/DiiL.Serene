namespace DiiL.Serene.Aoc {
    export interface StatusCollectionRow {
        Id?: number;
        Name?: string;
        CreateTime?: string;
    }

    export namespace StatusCollectionRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.StatusCollection';

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const CreateTime: string;
        }

        ['Id', 'Name', 'CreateTime'].forEach(x => (<any>Fields)[x] = x);
    }
}

