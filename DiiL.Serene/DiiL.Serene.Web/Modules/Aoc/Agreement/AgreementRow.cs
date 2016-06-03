
namespace DiiL.Serene.Aoc.Entities
{
    using Newtonsoft.Json;
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using Serenity.Data.Mapping;
    using System;
    using System.ComponentModel;
    using System.IO;

    [ConnectionKey("Aoc"), DisplayName("Agreement"), InstanceName("Agreement"), TwoLevelCached]
    [ReadPermission("Administration")]
    [ModifyPermission("Administration")]
    public sealed class AgreementRow : Row, IIdRow, INameRow
    {
        [DisplayName("Agreement Id"), Column("agreementId"), Identity]
        public Int32? AgreementId
        {
            get { return Fields.AgreementId[this]; }
            set { Fields.AgreementId[this] = value; }
        }

        [DisplayName("User"), Column("userId"), NotNull, ForeignKey("[dbo].[UserAccount]", "userId"), LeftJoin("jUser"), TextualField("UserShopId")]
        public Int32? UserId
        {
            get { return Fields.UserId[this]; }
            set { Fields.UserId[this] = value; }
        }

        [DisplayName("Shop Id"), Column("shopID"), Size(50), NotNull, QuickSearch]
        public String ShopId
        {
            get { return Fields.ShopId[this]; }
            set { Fields.ShopId[this] = value; }
        }

        [DisplayName("Platform Provider Manager Id"), Column("platformProviderManagerId"), NotNull]
        public Int32? PlatformProviderManagerId
        {
            get { return Fields.PlatformProviderManagerId[this]; }
            set { Fields.PlatformProviderManagerId[this] = value; }
        }

        [DisplayName("Area Provider Company Name"), Column("areaProviderCompanyName"), Size(128)]
        public String AreaProviderCompanyName
        {
            get { return Fields.AreaProviderCompanyName[this]; }
            set { Fields.AreaProviderCompanyName[this] = value; }
        }

        [DisplayName("Area Manager Id"), Column("areaManagerId")]
        public Int32? AreaManagerId
        {
            get { return Fields.AreaManagerId[this]; }
            set { Fields.AreaManagerId[this] = value; }
        }

        [DisplayName("Agreement Template"), Column("agreementTemplate"), NotNull, ForeignKey("[dbo].[AgreementTemplate]", "agreementTemplateId"), LeftJoin("jAgreementTemplate"), TextualField("AgreementTemplateApproveFlow")]
        public Int32? AgreementTemplate
        {
            get { return Fields.AgreementTemplate[this]; }
            set { Fields.AgreementTemplate[this] = value; }
        }

        [DisplayName("Agrement Year Of Date"), Column("agrementYearOfDate")]
        public Int32? AgrementYearOfDate
        {
            get { return Fields.AgrementYearOfDate[this]; }
            set { Fields.AgrementYearOfDate[this] = value; }
        }

        [DisplayName("Agreement Type"), Column("agreementType")]
        public Int32? AgreementType
        {
            get { return Fields.AgreementType[this]; }
            set { Fields.AgreementType[this] = value; }
        }

        [DisplayName("Agreement Status"), Column("agreementStatus"), Size(50), ForeignKey("[dbo].[AgreementStatus]", "agreementStatus"), LeftJoin("jAgreementStatus")]
        public String AgreementStatus
        {
            get { return Fields.AgreementStatus[this]; }
            set { Fields.AgreementStatus[this] = value; }
        }

        [DisplayName("Agreement Content"), Column("agreementContent"), NotNull]
        public String AgreementContent
        {
            get { return Fields.AgreementContent[this]; }
            set { Fields.AgreementContent[this] = value; }
        }

        [DisplayName("Begin Time"), Column("beginTime")]
        public DateTime? BeginTime
        {
            get { return Fields.BeginTime[this]; }
            set { Fields.BeginTime[this] = value; }
        }

        [DisplayName("End Time"), Column("endTime")]
        public DateTime? EndTime
        {
            get { return Fields.EndTime[this]; }
            set { Fields.EndTime[this] = value; }
        }

        [DisplayName("Approve Flow"), Column("approveFlow"), Size(50)]
        public String ApproveFlow
        {
            get { return Fields.ApproveFlow[this]; }
            set { Fields.ApproveFlow[this] = value; }
        }

        [DisplayName("Next Approve Role"), Column("nextApproveRole"), NotNull, ForeignKey("[dbo].[ManagerRole]", "id"), LeftJoin("jNextApproveRole"), TextualField("NextApproveRoleName")]
        public Int32? NextApproveRole
        {
            get { return Fields.NextApproveRole[this]; }
            set { Fields.NextApproveRole[this] = value; }
        }

        [DisplayName("Attachment"), Column("attachment"), Size(128)]
        public String Attachment
        {
            get { return Fields.Attachment[this]; }
            set { Fields.Attachment[this] = value; }
        }

        [DisplayName("Create Time"), Column("createTime")]
        public DateTime? CreateTime
        {
            get { return Fields.CreateTime[this]; }
            set { Fields.CreateTime[this] = value; }
        }

        [DisplayName("Clienttype"), Column("clienttype"), Size(20)]
        public String Clienttype
        {
            get { return Fields.Clienttype[this]; }
            set { Fields.Clienttype[this] = value; }
        }

        [DisplayName("Fixture"), Column("fixture"), Size(20)]
        public String Fixture
        {
            get { return Fields.Fixture[this]; }
            set { Fields.Fixture[this] = value; }
        }

        [DisplayName("Samplenum"), Column("samplenum")]
        public Int32? Samplenum
        {
            get { return Fields.Samplenum[this]; }
            set { Fields.Samplenum[this] = value; }
        }

        [DisplayName("Samplemoney"), Column("samplemoney"), Size(8), Scale(2)]
        public Decimal? Samplemoney
        {
            get { return Fields.Samplemoney[this]; }
            set { Fields.Samplemoney[this] = value; }
        }

        [DisplayName("Sampledate"), Column("sampledate")]
        public DateTime? Sampledate
        {
            get { return Fields.Sampledate[this]; }
            set { Fields.Sampledate[this] = value; }
        }

        [DisplayName("Rent Limit Time"), Column("rentLimitTime")]
        public DateTime? RentLimitTime
        {
            get { return Fields.RentLimitTime[this]; }
            set { Fields.RentLimitTime[this] = value; }
        }

        [DisplayName("Shopdoortype"), Column("shopdoortype"), Size(20)]
        public String Shopdoortype
        {
            get { return Fields.Shopdoortype[this]; }
            set { Fields.Shopdoortype[this] = value; }
        }

        [DisplayName("Id Card Number"), Column("idCardNumber"), Size(20)]
        public String IdCardNumber
        {
            get { return Fields.IdCardNumber[this]; }
            set { Fields.IdCardNumber[this] = value; }
        }

        [DisplayName("Name"), Column("name"), Size(128)]
        public String Name
        {
            get { return Fields.Name[this]; }
            set { Fields.Name[this] = value; }
        }

        [DisplayName("Mobile Phone Number"), Column("mobilePhoneNumber"), Size(20)]
        public String MobilePhoneNumber
        {
            get { return Fields.MobilePhoneNumber[this]; }
            set { Fields.MobilePhoneNumber[this] = value; }
        }

        [DisplayName("Email"), Column("email"), Size(128)]
        public String Email
        {
            get { return Fields.Email[this]; }
            set { Fields.Email[this] = value; }
        }

        [DisplayName("Shop Grade"), Column("shopGrade")]
        public Int32? ShopGrade
        {
            get { return Fields.ShopGrade[this]; }
            set { Fields.ShopGrade[this] = value; }
        }

        [DisplayName("Addr Province Id"), Column("addr_ProvinceID")]
        public Int32? AddrProvinceId
        {
            get { return Fields.AddrProvinceId[this]; }
            set { Fields.AddrProvinceId[this] = value; }
        }

        [DisplayName("Addr City Id"), Column("addr_CityID")]
        public Int32? AddrCityId
        {
            get { return Fields.AddrCityId[this]; }
            set { Fields.AddrCityId[this] = value; }
        }

        [DisplayName("Addr District Id"), Column("addr_DistrictID")]
        public Int32? AddrDistrictId
        {
            get { return Fields.AddrDistrictId[this]; }
            set { Fields.AddrDistrictId[this] = value; }
        }

        [DisplayName("Addr Province"), Column("addr_Province"), Size(50)]
        public String AddrProvince
        {
            get { return Fields.AddrProvince[this]; }
            set { Fields.AddrProvince[this] = value; }
        }

        [DisplayName("Addr City"), Column("addr_City"), Size(50)]
        public String AddrCity
        {
            get { return Fields.AddrCity[this]; }
            set { Fields.AddrCity[this] = value; }
        }

        [DisplayName("Addr District"), Column("addr_District"), Size(128)]
        public String AddrDistrict
        {
            get { return Fields.AddrDistrict[this]; }
            set { Fields.AddrDistrict[this] = value; }
        }

        [DisplayName("Addr Town"), Column("addr_Town"), Size(128)]
        public String AddrTown
        {
            get { return Fields.AddrTown[this]; }
            set { Fields.AddrTown[this] = value; }
        }

        [DisplayName("Addr Street"), Column("addr_Street"), Size(128)]
        public String AddrStreet
        {
            get { return Fields.AddrStreet[this]; }
            set { Fields.AddrStreet[this] = value; }
        }

        [DisplayName("Addr Detail"), Column("addr_Detail"), Size(128)]
        public String AddrDetail
        {
            get { return Fields.AddrDetail[this]; }
            set { Fields.AddrDetail[this] = value; }
        }

        [DisplayName("Shop Name"), Column("shopName"), Size(128)]
        public String ShopName
        {
            get { return Fields.ShopName[this]; }
            set { Fields.ShopName[this] = value; }
        }

        [DisplayName("Company Name"), Column("companyName"), Size(128)]
        public String CompanyName
        {
            get { return Fields.CompanyName[this]; }
            set { Fields.CompanyName[this] = value; }
        }

        [DisplayName("Shop Url"), Column("shopUrl"), Size(256)]
        public String ShopUrl
        {
            get { return Fields.ShopUrl[this]; }
            set { Fields.ShopUrl[this] = value; }
        }

        [DisplayName("Lanhaifuzeren"), Column("lanhaifuzeren"), Size(128)]
        public String Lanhaifuzeren
        {
            get { return Fields.Lanhaifuzeren[this]; }
            set { Fields.Lanhaifuzeren[this] = value; }
        }

        [DisplayName("Is First Agreement"), Column("isFirstAgreement")]
        public Boolean? IsFirstAgreement
        {
            get { return Fields.IsFirstAgreement[this]; }
            set { Fields.IsFirstAgreement[this] = value; }
        }

        [DisplayName("Is Real Shop"), Column("isRealShop")]
        public Boolean? IsRealShop
        {
            get { return Fields.IsRealShop[this]; }
            set { Fields.IsRealShop[this] = value; }
        }

        [DisplayName("Wangwang"), Column("wangwang"), Size(100)]
        public String Wangwang
        {
            get { return Fields.Wangwang[this]; }
            set { Fields.Wangwang[this] = value; }
        }

        [DisplayName("Total Amount"), Column("totalAmount")]
        public Int32? TotalAmount
        {
            get { return Fields.TotalAmount[this]; }
            set { Fields.TotalAmount[this] = value; }
        }

        [DisplayName("Model Amount"), Column("modelAmount")]
        public Int32? ModelAmount
        {
            get { return Fields.ModelAmount[this]; }
            set { Fields.ModelAmount[this] = value; }
        }

        [DisplayName("Amount Ratio"), Column("amountRatio"), Size(10)]
        public String AmountRatio
        {
            get { return Fields.AmountRatio[this]; }
            set { Fields.AmountRatio[this] = value; }
        }

        [DisplayName("Dpxz"), Column("dpxz"), Size(10)]
        public String Dpxz
        {
            get { return Fields.Dpxz[this]; }
            set { Fields.Dpxz[this] = value; }
        }

        [DisplayName("Origin Open Time"), Column("originOpenTime")]
        public DateTime? OriginOpenTime
        {
            get { return Fields.OriginOpenTime[this]; }
            set { Fields.OriginOpenTime[this] = value; }
        }

        [DisplayName("User Shop Id"), Expression("jUser.[shopId]")]
        public String UserShopId
        {
            get { return Fields.UserShopId[this]; }
            set { Fields.UserShopId[this] = value; }
        }

        [DisplayName("User User Name"), Expression("jUser.[userName]")]
        public String UserUserName
        {
            get { return Fields.UserUserName[this]; }
            set { Fields.UserUserName[this] = value; }
        }

        [DisplayName("User Password"), Expression("jUser.[password]")]
        public String UserPassword
        {
            get { return Fields.UserPassword[this]; }
            set { Fields.UserPassword[this] = value; }
        }

        [DisplayName("User Platform Provider Manager Id"), Expression("jUser.[platformProviderManagerId]")]
        public Int32? UserPlatformProviderManagerId
        {
            get { return Fields.UserPlatformProviderManagerId[this]; }
            set { Fields.UserPlatformProviderManagerId[this] = value; }
        }

        [DisplayName("User Platform Provider Manager User Name"), Expression("jUser.[platformProviderManagerUserName]")]
        public String UserPlatformProviderManagerUserName
        {
            get { return Fields.UserPlatformProviderManagerUserName[this]; }
            set { Fields.UserPlatformProviderManagerUserName[this] = value; }
        }

        [DisplayName("User Area Manager Id"), Expression("jUser.[areaManagerId]")]
        public Int32? UserAreaManagerId
        {
            get { return Fields.UserAreaManagerId[this]; }
            set { Fields.UserAreaManagerId[this] = value; }
        }

        [DisplayName("User Area Manager User Name"), Expression("jUser.[areaManagerUserName]")]
        public String UserAreaManagerUserName
        {
            get { return Fields.UserAreaManagerUserName[this]; }
            set { Fields.UserAreaManagerUserName[this] = value; }
        }

        [DisplayName("User Addr Province Id"), Expression("jUser.[addr_ProvinceID]")]
        public Int32? UserAddrProvinceId
        {
            get { return Fields.UserAddrProvinceId[this]; }
            set { Fields.UserAddrProvinceId[this] = value; }
        }

        [DisplayName("User Addr Province"), Expression("jUser.[addr_Province]")]
        public String UserAddrProvince
        {
            get { return Fields.UserAddrProvince[this]; }
            set { Fields.UserAddrProvince[this] = value; }
        }

        [DisplayName("User Addr City Id"), Expression("jUser.[addr_CityID]")]
        public Int32? UserAddrCityId
        {
            get { return Fields.UserAddrCityId[this]; }
            set { Fields.UserAddrCityId[this] = value; }
        }

        [DisplayName("User Addr City"), Expression("jUser.[addr_City]")]
        public String UserAddrCity
        {
            get { return Fields.UserAddrCity[this]; }
            set { Fields.UserAddrCity[this] = value; }
        }

        [DisplayName("User Addr District Id"), Expression("jUser.[addr_DistrictID]")]
        public Int32? UserAddrDistrictId
        {
            get { return Fields.UserAddrDistrictId[this]; }
            set { Fields.UserAddrDistrictId[this] = value; }
        }

        [DisplayName("User Addr District"), Expression("jUser.[addr_District]")]
        public String UserAddrDistrict
        {
            get { return Fields.UserAddrDistrict[this]; }
            set { Fields.UserAddrDistrict[this] = value; }
        }

        [DisplayName("User Addr Town"), Expression("jUser.[addr_Town]")]
        public String UserAddrTown
        {
            get { return Fields.UserAddrTown[this]; }
            set { Fields.UserAddrTown[this] = value; }
        }

        [DisplayName("User Addr Street"), Expression("jUser.[addr_Street]")]
        public String UserAddrStreet
        {
            get { return Fields.UserAddrStreet[this]; }
            set { Fields.UserAddrStreet[this] = value; }
        }

        [DisplayName("User Addr Detail"), Expression("jUser.[addr_Detail]")]
        public String UserAddrDetail
        {
            get { return Fields.UserAddrDetail[this]; }
            set { Fields.UserAddrDetail[this] = value; }
        }

        [DisplayName("User Gender"), Expression("jUser.[gender]")]
        public Boolean? UserGender
        {
            get { return Fields.UserGender[this]; }
            set { Fields.UserGender[this] = value; }
        }

        [DisplayName("User Id Card Number"), Expression("jUser.[idCardNumber]")]
        public String UserIdCardNumber
        {
            get { return Fields.UserIdCardNumber[this]; }
            set { Fields.UserIdCardNumber[this] = value; }
        }

        [DisplayName("User Name"), Expression("jUser.[name]")]
        public String UserName
        {
            get { return Fields.UserName[this]; }
            set { Fields.UserName[this] = value; }
        }

        [DisplayName("User Mobile Phone Number"), Expression("jUser.[mobilePhoneNumber]")]
        public String UserMobilePhoneNumber
        {
            get { return Fields.UserMobilePhoneNumber[this]; }
            set { Fields.UserMobilePhoneNumber[this] = value; }
        }

        [DisplayName("User Tele Phone Number"), Expression("jUser.[telePhoneNumber]")]
        public String UserTelePhoneNumber
        {
            get { return Fields.UserTelePhoneNumber[this]; }
            set { Fields.UserTelePhoneNumber[this] = value; }
        }

        [DisplayName("User Email"), Expression("jUser.[email]")]
        public String UserEmail
        {
            get { return Fields.UserEmail[this]; }
            set { Fields.UserEmail[this] = value; }
        }

        [DisplayName("User Create Time"), Expression("jUser.[createTime]")]
        public DateTime? UserCreateTime
        {
            get { return Fields.UserCreateTime[this]; }
            set { Fields.UserCreateTime[this] = value; }
        }

        [DisplayName("User Last Login Time"), Expression("jUser.[lastLoginTime]")]
        public DateTime? UserLastLoginTime
        {
            get { return Fields.UserLastLoginTime[this]; }
            set { Fields.UserLastLoginTime[this] = value; }
        }

        [DisplayName("User Is New"), Expression("jUser.[isNew]")]
        public Boolean? UserIsNew
        {
            get { return Fields.UserIsNew[this]; }
            set { Fields.UserIsNew[this] = value; }
        }

        [DisplayName("User Is Real Shop"), Expression("jUser.[isRealShop]")]
        public Boolean? UserIsRealShop
        {
            get { return Fields.UserIsRealShop[this]; }
            set { Fields.UserIsRealShop[this] = value; }
        }

        [DisplayName("User Is Street Shop"), Expression("jUser.[isStreetShop]")]
        public Boolean? UserIsStreetShop
        {
            get { return Fields.UserIsStreetShop[this]; }
            set { Fields.UserIsStreetShop[this] = value; }
        }

        [DisplayName("User User Status"), Expression("jUser.[userStatus]")]
        public String UserUserStatus
        {
            get { return Fields.UserUserStatus[this]; }
            set { Fields.UserUserStatus[this] = value; }
        }

        [DisplayName("User Agreement Status"), Expression("jUser.[agreementStatus]")]
        public String UserAgreementStatus
        {
            get { return Fields.UserAgreementStatus[this]; }
            set { Fields.UserAgreementStatus[this] = value; }
        }

        [DisplayName("User Shop Status"), Expression("jUser.[shopStatus]")]
        public String UserShopStatus
        {
            get { return Fields.UserShopStatus[this]; }
            set { Fields.UserShopStatus[this] = value; }
        }

        [DisplayName("User Shop Name"), Expression("jUser.[shopName]")]
        public String UserShopName
        {
            get { return Fields.UserShopName[this]; }
            set { Fields.UserShopName[this] = value; }
        }

        [DisplayName("User Company Name"), Expression("jUser.[companyName]")]
        public String UserCompanyName
        {
            get { return Fields.UserCompanyName[this]; }
            set { Fields.UserCompanyName[this] = value; }
        }

        [DisplayName("User Shop Expired Time"), Expression("jUser.[shopExpiredTime]")]
        public DateTime? UserShopExpiredTime
        {
            get { return Fields.UserShopExpiredTime[this]; }
            set { Fields.UserShopExpiredTime[this] = value; }
        }

        [DisplayName("User Shop Open Time"), Expression("jUser.[shopOpenTime]")]
        public DateTime? UserShopOpenTime
        {
            get { return Fields.UserShopOpenTime[this]; }
            set { Fields.UserShopOpenTime[this] = value; }
        }

        [DisplayName("User Shop Close Time"), Expression("jUser.[shopCloseTime]")]
        public DateTime? UserShopCloseTime
        {
            get { return Fields.UserShopCloseTime[this]; }
            set { Fields.UserShopCloseTime[this] = value; }
        }

        [DisplayName("User Online Shop Url"), Expression("jUser.[onlineShopUrl]")]
        public String UserOnlineShopUrl
        {
            get { return Fields.UserOnlineShopUrl[this]; }
            set { Fields.UserOnlineShopUrl[this] = value; }
        }

        [DisplayName("User Score Of Total"), Expression("jUser.[scoreOfTotal]")]
        public Int32? UserScoreOfTotal
        {
            get { return Fields.UserScoreOfTotal[this]; }
            set { Fields.UserScoreOfTotal[this] = value; }
        }

        [DisplayName("User Score Of Punish"), Expression("jUser.[scoreOfPunish]")]
        public Int32? UserScoreOfPunish
        {
            get { return Fields.UserScoreOfPunish[this]; }
            set { Fields.UserScoreOfPunish[this] = value; }
        }

        [DisplayName("User Score Of Exchange"), Expression("jUser.[scoreOfExchange]")]
        public Int32? UserScoreOfExchange
        {
            get { return Fields.UserScoreOfExchange[this]; }
            set { Fields.UserScoreOfExchange[this] = value; }
        }

        [DisplayName("User Score Of Remain"), Expression("jUser.[scoreOfRemain]")]
        public Int32? UserScoreOfRemain
        {
            get { return Fields.UserScoreOfRemain[this]; }
            set { Fields.UserScoreOfRemain[this] = value; }
        }

        [DisplayName("User Is First Agreement"), Expression("jUser.[isFirstAgreement]")]
        public Boolean? UserIsFirstAgreement
        {
            get { return Fields.UserIsFirstAgreement[this]; }
            set { Fields.UserIsFirstAgreement[this] = value; }
        }

        [DisplayName("User Lanhaifuzeren"), Expression("jUser.[lanhaifuzeren]")]
        public String UserLanhaifuzeren
        {
            get { return Fields.UserLanhaifuzeren[this]; }
            set { Fields.UserLanhaifuzeren[this] = value; }
        }

        [DisplayName("Agreement Template Agreement Type"), Expression("jAgreementTemplate.[agreementType]")]
        public Int32? AgreementTemplateAgreementType
        {
            get { return Fields.AgreementTemplateAgreementType[this]; }
            set { Fields.AgreementTemplateAgreementType[this] = value; }
        }

        [DisplayName("Agreement Template Shop Grad Id"), Expression("jAgreementTemplate.[shopGradId]")]
        public Int32? AgreementTemplateShopGradId
        {
            get { return Fields.AgreementTemplateShopGradId[this]; }
            set { Fields.AgreementTemplateShopGradId[this] = value; }
        }

        [DisplayName("Agreement Template Approve Flow"), Expression("jAgreementTemplate.[approveFlow]")]
        public String AgreementTemplateApproveFlow
        {
            get { return Fields.AgreementTemplateApproveFlow[this]; }
            set { Fields.AgreementTemplateApproveFlow[this] = value; }
        }

        [DisplayName("Agreement Template Template Content"), Expression("jAgreementTemplate.[templateContent]")]
        public String AgreementTemplateTemplateContent
        {
            get { return Fields.AgreementTemplateTemplateContent[this]; }
            set { Fields.AgreementTemplateTemplateContent[this] = value; }
        }

        [DisplayName("Agreement Template Book Marks"), Expression("jAgreementTemplate.[bookMarks]")]
        public String AgreementTemplateBookMarks
        {
            get { return Fields.AgreementTemplateBookMarks[this]; }
            set { Fields.AgreementTemplateBookMarks[this] = value; }
        }

        [DisplayName("Agreement Template Year Of Date"), Expression("jAgreementTemplate.[yearOfDate]")]
        public Int32? AgreementTemplateYearOfDate
        {
            get { return Fields.AgreementTemplateYearOfDate[this]; }
            set { Fields.AgreementTemplateYearOfDate[this] = value; }
        }

        [DisplayName("Agreement Template Is Validate"), Expression("jAgreementTemplate.[isValidate]")]
        public Boolean? AgreementTemplateIsValidate
        {
            get { return Fields.AgreementTemplateIsValidate[this]; }
            set { Fields.AgreementTemplateIsValidate[this] = value; }
        }

        [DisplayName("Agreement Template Expired Time"), Expression("jAgreementTemplate.[expiredTime]")]
        public DateTime? AgreementTemplateExpiredTime
        {
            get { return Fields.AgreementTemplateExpiredTime[this]; }
            set { Fields.AgreementTemplateExpiredTime[this] = value; }
        }

        [DisplayName("Agreement Template Type"), Expression("jAgreementTemplate.[type]")]
        public String AgreementTemplateType
        {
            get { return Fields.AgreementTemplateType[this]; }
            set { Fields.AgreementTemplateType[this] = value; }
        }

        [DisplayName("Next Approve Role Name"), Expression("jNextApproveRole.[name]")]
        public String NextApproveRoleName
        {
            get { return Fields.NextApproveRoleName[this]; }
            set { Fields.NextApproveRoleName[this] = value; }
        }

        [DisplayName("Next Approve Role Description"), Expression("jNextApproveRole.[description]")]
        public String NextApproveRoleDescription
        {
            get { return Fields.NextApproveRoleDescription[this]; }
            set { Fields.NextApproveRoleDescription[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.AgreementId; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.ShopId; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public AgreementRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field AgreementId;
            public Int32Field UserId;
            public StringField ShopId;
            public Int32Field PlatformProviderManagerId;
            public StringField AreaProviderCompanyName;
            public Int32Field AreaManagerId;
            public Int32Field AgreementTemplate;
            public Int32Field AgrementYearOfDate;
            public Int32Field AgreementType;
            public StringField AgreementStatus;
            public StringField AgreementContent;
            public DateTimeField BeginTime;
            public DateTimeField EndTime;
            public StringField ApproveFlow;
            public Int32Field NextApproveRole;
            public StringField Attachment;
            public DateTimeField CreateTime;
            public StringField Clienttype;
            public StringField Fixture;
            public Int32Field Samplenum;
            public DecimalField Samplemoney;
            public DateTimeField Sampledate;
            public DateTimeField RentLimitTime;
            public StringField Shopdoortype;
            public StringField IdCardNumber;
            public StringField Name;
            public StringField MobilePhoneNumber;
            public StringField Email;
            public Int32Field ShopGrade;
            public Int32Field AddrProvinceId;
            public Int32Field AddrCityId;
            public Int32Field AddrDistrictId;
            public StringField AddrProvince;
            public StringField AddrCity;
            public StringField AddrDistrict;
            public StringField AddrTown;
            public StringField AddrStreet;
            public StringField AddrDetail;
            public StringField ShopName;
            public StringField CompanyName;
            public StringField ShopUrl;
            public StringField Lanhaifuzeren;
            public BooleanField IsFirstAgreement;
            public BooleanField IsRealShop;
            public StringField Wangwang;
            public Int32Field TotalAmount;
            public Int32Field ModelAmount;
            public StringField AmountRatio;
            public StringField Dpxz;
            public DateTimeField OriginOpenTime;

            public StringField UserShopId;
            public StringField UserUserName;
            public StringField UserPassword;
            public Int32Field UserPlatformProviderManagerId;
            public StringField UserPlatformProviderManagerUserName;
            public Int32Field UserAreaManagerId;
            public StringField UserAreaManagerUserName;
            public Int32Field UserAddrProvinceId;
            public StringField UserAddrProvince;
            public Int32Field UserAddrCityId;
            public StringField UserAddrCity;
            public Int32Field UserAddrDistrictId;
            public StringField UserAddrDistrict;
            public StringField UserAddrTown;
            public StringField UserAddrStreet;
            public StringField UserAddrDetail;
            public BooleanField UserGender;
            public StringField UserIdCardNumber;
            public StringField UserName;
            public StringField UserMobilePhoneNumber;
            public StringField UserTelePhoneNumber;
            public StringField UserEmail;
            public DateTimeField UserCreateTime;
            public DateTimeField UserLastLoginTime;
            public BooleanField UserIsNew;
            public BooleanField UserIsRealShop;
            public BooleanField UserIsStreetShop;
            public StringField UserUserStatus;
            public StringField UserAgreementStatus;
            public StringField UserShopStatus;
            public StringField UserShopName;
            public StringField UserCompanyName;
            public DateTimeField UserShopExpiredTime;
            public DateTimeField UserShopOpenTime;
            public DateTimeField UserShopCloseTime;
            public StringField UserOnlineShopUrl;
            public Int32Field UserScoreOfTotal;
            public Int32Field UserScoreOfPunish;
            public Int32Field UserScoreOfExchange;
            public Int32Field UserScoreOfRemain;
            public BooleanField UserIsFirstAgreement;
            public StringField UserLanhaifuzeren;

            public Int32Field AgreementTemplateAgreementType;
            public Int32Field AgreementTemplateShopGradId;
            public StringField AgreementTemplateApproveFlow;
            public StringField AgreementTemplateTemplateContent;
            public StringField AgreementTemplateBookMarks;
            public Int32Field AgreementTemplateYearOfDate;
            public BooleanField AgreementTemplateIsValidate;
            public DateTimeField AgreementTemplateExpiredTime;
            public StringField AgreementTemplateType;


            public StringField NextApproveRoleName;
            public StringField NextApproveRoleDescription;

            public RowFields()
                : base("[dbo].[Agreement]")
            {
                LocalTextPrefix = "Aoc.Agreement";
            }
        }
    }
}