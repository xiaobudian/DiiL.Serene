

namespace DiiL.Serene.Aoc {
    export class AgreementForm extends Serenity.PrefixedContext {
        static formKey = 'Aoc.Agreement';
    }

    export interface AgreementForm {
        UserId: Serenity.IntegerEditor;
        ShopId: Serenity.StringEditor;
        PlatformProviderManagerId: Serenity.IntegerEditor;
        AreaProviderCompanyName: Serenity.StringEditor;
        AreaManagerId: Serenity.IntegerEditor;
        AgreementTemplate: Serenity.IntegerEditor;
        AgrementYearOfDate: Serenity.IntegerEditor;
        AgreementType: Serenity.IntegerEditor;
        AgreementStatus: Serenity.StringEditor;
        AgreementContent: Serenity.StringEditor;
        BeginTime: Serenity.DateEditor;
        EndTime: Serenity.DateEditor;
        ApproveFlow: Serenity.StringEditor;
        NextApproveRole: Serenity.IntegerEditor;
        Attachment: Serenity.StringEditor;
        CreateTime: Serenity.DateEditor;
        Clienttype: Serenity.StringEditor;
        Fixture: Serenity.StringEditor;
        Samplenum: Serenity.IntegerEditor;
        Samplemoney: Serenity.DecimalEditor;
        Sampledate: Serenity.DateEditor;
        RentLimitTime: Serenity.DateEditor;
        Shopdoortype: Serenity.StringEditor;
        IdCardNumber: Serenity.StringEditor;
        Name: Serenity.StringEditor;
        MobilePhoneNumber: Serenity.StringEditor;
        Email: Serenity.StringEditor;
        ShopGrade: Serenity.IntegerEditor;
        AddrProvinceId: Serenity.IntegerEditor;
        AddrCityId: Serenity.IntegerEditor;
        AddrDistrictId: Serenity.IntegerEditor;
        AddrProvince: Serenity.StringEditor;
        AddrCity: Serenity.StringEditor;
        AddrDistrict: Serenity.StringEditor;
        AddrTown: Serenity.StringEditor;
        AddrStreet: Serenity.StringEditor;
        AddrDetail: Serenity.StringEditor;
        ShopName: Serenity.StringEditor;
        CompanyName: Serenity.StringEditor;
        ShopUrl: Serenity.StringEditor;
        Lanhaifuzeren: Serenity.StringEditor;
        IsFirstAgreement: Serenity.BooleanEditor;
        IsRealShop: Serenity.BooleanEditor;
        Wangwang: Serenity.StringEditor;
        TotalAmount: Serenity.IntegerEditor;
        ModelAmount: Serenity.IntegerEditor;
        AmountRatio: Serenity.StringEditor;
        Dpxz: Serenity.StringEditor;
        OriginOpenTime: Serenity.DateEditor;
    }

    [['AgreementId', () => Serenity.IntegerEditor], ['UserId', () => Serenity.IntegerEditor], ['ShopId', () => Serenity.StringEditor], ['PlatformProviderManagerId', () => Serenity.IntegerEditor], ['AreaProviderCompanyName', () => Serenity.StringEditor], ['AreaManagerId', () => Serenity.IntegerEditor], ['AgreementTemplate', () => Serenity.IntegerEditor], ['AgrementYearOfDate', () => Serenity.IntegerEditor], ['AgreementType', () => Serenity.IntegerEditor], ['AgreementStatus', () => Serenity.StringEditor], ['AgreementContent', () => Serenity.StringEditor], ['BeginTime', () => Serenity.DateEditor], ['EndTime', () => Serenity.DateEditor], ['ApproveFlow', () => Serenity.StringEditor], ['NextApproveRole', () => Serenity.IntegerEditor], ['Attachment', () => Serenity.StringEditor], ['CreateTime', () => Serenity.DateEditor], ['Clienttype', () => Serenity.StringEditor], ['Fixture', () => Serenity.StringEditor], ['Samplenum', () => Serenity.IntegerEditor], ['Samplemoney', () => Serenity.DecimalEditor], ['Sampledate', () => Serenity.DateEditor], ['RentLimitTime', () => Serenity.DateEditor], ['Shopdoortype', () => Serenity.StringEditor], ['IdCardNumber', () => Serenity.StringEditor], ['Name', () => Serenity.StringEditor], ['MobilePhoneNumber', () => Serenity.StringEditor], ['Email', () => Serenity.StringEditor], ['ShopGrade', () => Serenity.IntegerEditor], ['AddrProvinceId', () => Serenity.IntegerEditor], ['AddrCityId', () => Serenity.IntegerEditor], ['AddrDistrictId', () => Serenity.IntegerEditor], ['AddrProvince', () => Serenity.StringEditor], ['AddrCity', () => Serenity.StringEditor], ['AddrDistrict', () => Serenity.StringEditor], ['AddrTown', () => Serenity.StringEditor], ['AddrStreet', () => Serenity.StringEditor], ['AddrDetail', () => Serenity.StringEditor], ['ShopName', () => Serenity.StringEditor], ['CompanyName', () => Serenity.StringEditor], ['ShopUrl', () => Serenity.StringEditor], ['Lanhaifuzeren', () => Serenity.StringEditor], ['IsFirstAgreement', () => Serenity.BooleanEditor], ['IsRealShop', () => Serenity.BooleanEditor], ['Wangwang', () => Serenity.StringEditor], ['TotalAmount', () => Serenity.IntegerEditor], ['ModelAmount', () => Serenity.IntegerEditor], ['AmountRatio', () => Serenity.StringEditor], ['Dpxz', () => Serenity.StringEditor], ['OriginOpenTime', () => Serenity.DateEditor]].forEach(x => Object.defineProperty(AgreementForm.prototype, <string>x[0], { get: function () { return this.w(x[0], (x[1] as any)()); }, enumerable: true, configurable: true }));
}