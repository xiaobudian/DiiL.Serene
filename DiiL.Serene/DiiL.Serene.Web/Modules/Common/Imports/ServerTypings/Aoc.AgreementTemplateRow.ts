namespace DiiL.Serene.Aoc {
    export interface AgreementTemplateRow {
        Id?: number;
        AgreementType?: AgreementTypes;
        ShopGradeId?: number;
        ApproveFlow?: string;
        Content?: string;
        Status?: CommonStatus;
        Type?: string;
    }

    export namespace AgreementTemplateRow {
        export const idProperty = 'Id';
        export const nameProperty = 'ApproveFlow';
        export const localTextPrefix = 'Aoc.AgreementTemplate';

        export namespace Fields {
            export declare const Id: string;
            export declare const AgreementType: string;
            export declare const ShopGradeId: string;
            export declare const ApproveFlow: string;
            export declare const Content: string;
            export declare const Status: string;
            export declare const Type: string;
        }

        ['Id', 'AgreementType', 'ShopGradeId', 'ApproveFlow', 'Content', 'Status', 'Type'].forEach(x => (<any>Fields)[x] = x);
    }
}

