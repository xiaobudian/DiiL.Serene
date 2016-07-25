
namespace DiiL.Serene.Aoc {
    export interface SemRewardPolicyRow {
        PolicyId?: number;
        ShopGradeId?: number;
        TotalAmount?: number;
        Status?: number;
        EditTime?: string;
        Begintime?: string;
        Endtime?: string;
        Amount?: string;
        MaxScore?: number;
        NotStreetReward?: number;
        StreetReward?: number;
        TenantId?: number;
        ShopGradeParentId?: number;
        ShopGradeName?: string;
        ShopGradeMaxSnNumber?: number;
        ShopGradeMaxStreetShopMoney?: number;
        ShopGradeMaxFreeTrialCount?: number;
        ShopGradeStatus?: number;
        ShopGradeSpecialAmount?: number;
        ShopGradeOrder?: number;
        ShopGradeTenantId?: number;
        TenantName?: string;
    }

    export namespace SemRewardPolicyRow {
        export const idProperty = 'PolicyId';
        export const nameProperty = 'Amount';
        export const localTextPrefix = 'Aoc.SemRewardPolicy';

        export namespace Fields {
            export declare const PolicyId;
            export declare const ShopGradeId;
            export declare const TotalAmount;
            export declare const Status;
            export declare const EditTime;
            export declare const Begintime;
            export declare const Endtime;
            export declare const Amount;
            export declare const MaxScore;
            export declare const NotStreetReward;
            export declare const StreetReward;
            export declare const TenantId;
            export declare const ShopGradeParentId: string;
            export declare const ShopGradeName: string;
            export declare const ShopGradeMaxSnNumber: string;
            export declare const ShopGradeMaxStreetShopMoney: string;
            export declare const ShopGradeMaxFreeTrialCount: string;
            export declare const ShopGradeStatus: string;
            export declare const ShopGradeSpecialAmount: string;
            export declare const ShopGradeOrder: string;
            export declare const ShopGradeTenantId: string;
            export declare const TenantName: string;
        }

        ['PolicyId', 'ShopGradeId', 'TotalAmount', 'Status', 'EditTime', 'Begintime', 'Endtime', 'Amount', 'MaxScore', 'NotStreetReward', 'StreetReward', 'TenantId', 'ShopGradeParentId', 'ShopGradeName', 'ShopGradeMaxSnNumber', 'ShopGradeMaxStreetShopMoney', 'ShopGradeMaxFreeTrialCount', 'ShopGradeStatus', 'ShopGradeSpecialAmount', 'ShopGradeOrder', 'ShopGradeTenantId', 'TenantName'].forEach(x => (<any>Fields)[x] = x);
    }
}

