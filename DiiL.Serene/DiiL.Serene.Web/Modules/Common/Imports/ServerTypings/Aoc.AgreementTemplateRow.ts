namespace DiiL.Serene.Aoc {
    export interface AgreementTemplateRow {
        AgreementTemplateId?: number;
        AgreementType?: AgreementTypes;
        ShopGradId?: number;
        ApproveFlow?: string;
        TemplateContent?: string;
        BookMarks?: string;
        YearOfDate?: number;
        IsValidate?: boolean;
        ExpiredTime?: string;
        Type?: string;
        ShopGradParentId?: number;
        ShopGradName?: string;
        ShopGradMaxSnNumber?: number;
        ShopGradMaxStreetShopMoney?: number;
        ShopGradMaxFreeTrialCount?: number;
        ShopGradStatus?: string;
        ShopGradCategory?: number;
        ShopGradSpecialAmount?: number;
        ShopGradOrder?: number;
        GradeName?: string;
    }

    export namespace AgreementTemplateRow {
        export const idProperty = 'AgreementTemplateId';
        export const nameProperty = 'ApproveFlow';
        export const localTextPrefix = 'Aoc.AgreementTemplate';

        export namespace Fields {
            export declare const AgreementTemplateId: string;
            export declare const AgreementType: string;
            export declare const ShopGradId: string;
            export declare const ApproveFlow: string;
            export declare const TemplateContent: string;
            export declare const BookMarks: string;
            export declare const YearOfDate: string;
            export declare const IsValidate: string;
            export declare const ExpiredTime: string;
            export declare const Type: string;
            export declare const ShopGradParentId: string;
            export declare const ShopGradName: string;
            export declare const ShopGradMaxSnNumber: string;
            export declare const ShopGradMaxStreetShopMoney: string;
            export declare const ShopGradMaxFreeTrialCount: string;
            export declare const ShopGradStatus: string;
            export declare const ShopGradCategory: string;
            export declare const ShopGradSpecialAmount: string;
            export declare const ShopGradOrder: string;
            export declare const GradeName: string;
        }

        ['AgreementTemplateId', 'AgreementType', 'ShopGradId', 'ApproveFlow', 'TemplateContent', 'BookMarks', 'YearOfDate', 'IsValidate', 'ExpiredTime', 'Type', 'ShopGradParentId', 'ShopGradName', 'ShopGradMaxSnNumber', 'ShopGradMaxStreetShopMoney', 'ShopGradMaxFreeTrialCount', 'ShopGradStatus', 'ShopGradCategory', 'ShopGradSpecialAmount', 'ShopGradOrder', 'GradeName'].forEach(x => (<any>Fields)[x] = x);
    }
}

