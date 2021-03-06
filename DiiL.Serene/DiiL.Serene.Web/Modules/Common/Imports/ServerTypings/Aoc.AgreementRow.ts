﻿namespace DiiL.Serene.Aoc {
    export interface AgreementRow {
        AgreementId?: number;
        UserId?: number;
        ShopId?: string;
        PlatformProviderManagerId?: number;
        AreaProviderCompanyName?: string;
        AreaManagerId?: number;
        AgreementTemplate?: number;
        AgrementYearOfDate?: number;
        AgreementType?: number;
        AgreementStatus?: string;
        AgreementContent?: string;
        BeginTime?: string;
        EndTime?: string;
        ApproveFlow?: string;
        NextApproveRole?: number;
        Attachment?: string;
        CreateTime?: string;
        Clienttype?: string;
        Fixture?: string;
        Samplenum?: number;
        Samplemoney?: number;
        Sampledate?: string;
        RentLimitTime?: string;
        Shopdoortype?: string;
        IdCardNumber?: string;
        Name?: string;
        MobilePhoneNumber?: string;
        Email?: string;
        ShopGrade?: number;
        AddrProvinceId?: number;
        AddrCityId?: number;
        AddrDistrictId?: number;
        AddrProvince?: string;
        AddrCity?: string;
        AddrDistrict?: string;
        AddrTown?: string;
        AddrStreet?: string;
        AddrDetail?: string;
        ShopName?: string;
        CompanyName?: string;
        ShopUrl?: string;
        Lanhaifuzeren?: string;
        IsFirstAgreement?: boolean;
        IsRealShop?: boolean;
        Wangwang?: string;
        TotalAmount?: number;
        ModelAmount?: number;
        AmountRatio?: string;
        Dpxz?: string;
        OriginOpenTime?: string;
        UserShopId?: string;
        UserUserName?: string;
        UserPassword?: string;
        UserPlatformProviderManagerId?: number;
        UserPlatformProviderManagerUserName?: string;
        UserAreaManagerId?: number;
        UserAreaManagerUserName?: string;
        UserAddrProvinceId?: number;
        UserAddrProvince?: string;
        UserAddrCityId?: number;
        UserAddrCity?: string;
        UserAddrDistrictId?: number;
        UserAddrDistrict?: string;
        UserAddrTown?: string;
        UserAddrStreet?: string;
        UserAddrDetail?: string;
        UserGender?: boolean;
        UserIdCardNumber?: string;
        UserName?: string;
        UserMobilePhoneNumber?: string;
        UserTelePhoneNumber?: string;
        UserEmail?: string;
        UserCreateTime?: string;
        UserLastLoginTime?: string;
        UserIsNew?: boolean;
        UserIsRealShop?: boolean;
        UserIsStreetShop?: boolean;
        UserUserStatus?: string;
        UserAgreementStatus?: string;
        UserShopStatus?: string;
        UserShopName?: string;
        UserCompanyName?: string;
        UserShopExpiredTime?: string;
        UserShopOpenTime?: string;
        UserShopCloseTime?: string;
        UserOnlineShopUrl?: string;
        UserScoreOfTotal?: number;
        UserScoreOfPunish?: number;
        UserScoreOfExchange?: number;
        UserScoreOfRemain?: number;
        UserIsFirstAgreement?: boolean;
        UserLanhaifuzeren?: string;
        AgreementTemplateAgreementType?: number;
        AgreementTemplateShopGradId?: number;
        AgreementTemplateApproveFlow?: string;
        AgreementTemplateTemplateContent?: string;
        AgreementTemplateBookMarks?: string;
        AgreementTemplateYearOfDate?: number;
        AgreementTemplateIsValidate?: boolean;
        AgreementTemplateExpiredTime?: string;
        AgreementTemplateType?: string;
        NextApproveRoleName?: string;
        NextApproveRoleDescription?: string;
    }

    export namespace AgreementRow {
        export const idProperty = 'AgreementId';
        export const nameProperty = 'ShopId';
        export const localTextPrefix = 'Aoc.Agreement';

        export namespace Fields {
            export declare const AgreementId: string;
            export declare const UserId: string;
            export declare const ShopId: string;
            export declare const PlatformProviderManagerId: string;
            export declare const AreaProviderCompanyName: string;
            export declare const AreaManagerId: string;
            export declare const AgreementTemplate: string;
            export declare const AgrementYearOfDate: string;
            export declare const AgreementType: string;
            export declare const AgreementStatus: string;
            export declare const AgreementContent: string;
            export declare const BeginTime: string;
            export declare const EndTime: string;
            export declare const ApproveFlow: string;
            export declare const NextApproveRole: string;
            export declare const Attachment: string;
            export declare const CreateTime: string;
            export declare const Clienttype: string;
            export declare const Fixture: string;
            export declare const Samplenum: string;
            export declare const Samplemoney: string;
            export declare const Sampledate: string;
            export declare const RentLimitTime: string;
            export declare const Shopdoortype: string;
            export declare const IdCardNumber: string;
            export declare const Name: string;
            export declare const MobilePhoneNumber: string;
            export declare const Email: string;
            export declare const ShopGrade: string;
            export declare const AddrProvinceId: string;
            export declare const AddrCityId: string;
            export declare const AddrDistrictId: string;
            export declare const AddrProvince: string;
            export declare const AddrCity: string;
            export declare const AddrDistrict: string;
            export declare const AddrTown: string;
            export declare const AddrStreet: string;
            export declare const AddrDetail: string;
            export declare const ShopName: string;
            export declare const CompanyName: string;
            export declare const ShopUrl: string;
            export declare const Lanhaifuzeren: string;
            export declare const IsFirstAgreement: string;
            export declare const IsRealShop: string;
            export declare const Wangwang: string;
            export declare const TotalAmount: string;
            export declare const ModelAmount: string;
            export declare const AmountRatio: string;
            export declare const Dpxz: string;
            export declare const OriginOpenTime: string;
            export declare const UserShopId: string;
            export declare const UserUserName: string;
            export declare const UserPassword: string;
            export declare const UserPlatformProviderManagerId: string;
            export declare const UserPlatformProviderManagerUserName: string;
            export declare const UserAreaManagerId: string;
            export declare const UserAreaManagerUserName: string;
            export declare const UserAddrProvinceId: string;
            export declare const UserAddrProvince: string;
            export declare const UserAddrCityId: string;
            export declare const UserAddrCity: string;
            export declare const UserAddrDistrictId: string;
            export declare const UserAddrDistrict: string;
            export declare const UserAddrTown: string;
            export declare const UserAddrStreet: string;
            export declare const UserAddrDetail: string;
            export declare const UserGender: string;
            export declare const UserIdCardNumber: string;
            export declare const UserName: string;
            export declare const UserMobilePhoneNumber: string;
            export declare const UserTelePhoneNumber: string;
            export declare const UserEmail: string;
            export declare const UserCreateTime: string;
            export declare const UserLastLoginTime: string;
            export declare const UserIsNew: string;
            export declare const UserIsRealShop: string;
            export declare const UserIsStreetShop: string;
            export declare const UserUserStatus: string;
            export declare const UserAgreementStatus: string;
            export declare const UserShopStatus: string;
            export declare const UserShopName: string;
            export declare const UserCompanyName: string;
            export declare const UserShopExpiredTime: string;
            export declare const UserShopOpenTime: string;
            export declare const UserShopCloseTime: string;
            export declare const UserOnlineShopUrl: string;
            export declare const UserScoreOfTotal: string;
            export declare const UserScoreOfPunish: string;
            export declare const UserScoreOfExchange: string;
            export declare const UserScoreOfRemain: string;
            export declare const UserIsFirstAgreement: string;
            export declare const UserLanhaifuzeren: string;
            export declare const AgreementTemplateAgreementType: string;
            export declare const AgreementTemplateShopGradId: string;
            export declare const AgreementTemplateApproveFlow: string;
            export declare const AgreementTemplateTemplateContent: string;
            export declare const AgreementTemplateBookMarks: string;
            export declare const AgreementTemplateYearOfDate: string;
            export declare const AgreementTemplateIsValidate: string;
            export declare const AgreementTemplateExpiredTime: string;
            export declare const AgreementTemplateType: string;
            export declare const NextApproveRoleName: string;
            export declare const NextApproveRoleDescription: string;
        }

        ['AgreementId', 'UserId', 'ShopId', 'PlatformProviderManagerId', 'AreaProviderCompanyName', 'AreaManagerId', 'AgreementTemplate', 'AgrementYearOfDate', 'AgreementType', 'AgreementStatus', 'AgreementContent', 'BeginTime', 'EndTime', 'ApproveFlow', 'NextApproveRole', 'Attachment', 'CreateTime', 'Clienttype', 'Fixture', 'Samplenum', 'Samplemoney', 'Sampledate', 'RentLimitTime', 'Shopdoortype', 'IdCardNumber', 'Name', 'MobilePhoneNumber', 'Email', 'ShopGrade', 'AddrProvinceId', 'AddrCityId', 'AddrDistrictId', 'AddrProvince', 'AddrCity', 'AddrDistrict', 'AddrTown', 'AddrStreet', 'AddrDetail', 'ShopName', 'CompanyName', 'ShopUrl', 'Lanhaifuzeren', 'IsFirstAgreement', 'IsRealShop', 'Wangwang', 'TotalAmount', 'ModelAmount', 'AmountRatio', 'Dpxz', 'OriginOpenTime', 'UserShopId', 'UserUserName', 'UserPassword', 'UserPlatformProviderManagerId', 'UserPlatformProviderManagerUserName', 'UserAreaManagerId', 'UserAreaManagerUserName', 'UserAddrProvinceId', 'UserAddrProvince', 'UserAddrCityId', 'UserAddrCity', 'UserAddrDistrictId', 'UserAddrDistrict', 'UserAddrTown', 'UserAddrStreet', 'UserAddrDetail', 'UserGender', 'UserIdCardNumber', 'UserName', 'UserMobilePhoneNumber', 'UserTelePhoneNumber', 'UserEmail', 'UserCreateTime', 'UserLastLoginTime', 'UserIsNew', 'UserIsRealShop', 'UserIsStreetShop', 'UserUserStatus', 'UserAgreementStatus', 'UserShopStatus', 'UserShopName', 'UserCompanyName', 'UserShopExpiredTime', 'UserShopOpenTime', 'UserShopCloseTime', 'UserOnlineShopUrl', 'UserScoreOfTotal', 'UserScoreOfPunish', 'UserScoreOfExchange', 'UserScoreOfRemain', 'UserIsFirstAgreement', 'UserLanhaifuzeren', 'AgreementTemplateAgreementType', 'AgreementTemplateShopGradId', 'AgreementTemplateApproveFlow', 'AgreementTemplateTemplateContent', 'AgreementTemplateBookMarks', 'AgreementTemplateYearOfDate', 'AgreementTemplateIsValidate', 'AgreementTemplateExpiredTime', 'AgreementTemplateType', 'NextApproveRoleName', 'NextApproveRoleDescription'].forEach(x => (<any>Fields)[x] = x);
    }
}

