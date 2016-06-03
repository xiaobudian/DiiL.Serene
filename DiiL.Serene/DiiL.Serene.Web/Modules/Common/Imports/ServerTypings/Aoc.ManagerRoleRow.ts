namespace DiiL.Serene.Aoc {
    export interface ManagerRoleRow {
        Id?: number;
        Name?: string;
        Description?: string;
    }

    export namespace ManagerRoleRow {
        export const idProperty = 'Id';
        export const nameProperty = 'Name';
        export const localTextPrefix = 'Aoc.ManagerRole';

        export namespace Fields {
            export declare const Id: string;
            export declare const Name: string;
            export declare const Description: string;
        }

        ['Id', 'Name', 'Description'].forEach(x => (<any>Fields)[x] = x);
    }
}

