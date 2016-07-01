
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

    [ConnectionKey("Aoc"), DisplayName("RewardMonthyStatistical"), InstanceName("RewardMonthyStatistical"), TwoLevelCached]
    [ReadPermission(Aoc.PermissionKeys.RewardMonthyStatistical.View)]
    [ModifyPermission(Aoc.PermissionKeys.RewardMonthyStatistical.Modify)]
    public sealed class RewardMonthyStatisticalRow : Row, IIdRow, INameRow
    {
        [DisplayName("Id"), Column("id"), Identity]
        public Int32? Id
        {
            get { return Fields.Id[this]; }
            set { Fields.Id[this] = value; }
        }

        [DisplayName("User"), Column("userId"), NotNull, 
            ForeignKey("[dbo].[UserAccount]", "userId"), 
            LeftJoin("jUser"), TextualField("UserShopId")]
        public Int32? UserId
        {
            get { return Fields.UserId[this]; }
            set { Fields.UserId[this] = value; }
        }

        [DisplayName("Platform Provider Id"), Column("platformProviderId"), NotNull]
        public Int32? PlatformProviderId
        {
            get { return Fields.PlatformProviderId[this]; }
            set { Fields.PlatformProviderId[this] = value; }
        }

        [DisplayName("Policy Id"), Column("policyId"), NotNull]
        public Int32? PolicyId
        {
            get { return Fields.PolicyId[this]; }
            set { Fields.PolicyId[this] = value; }
        }

        [DisplayName("Task Id"), Column("taskId")]
        public Int32? TaskId
        {
            get { return Fields.TaskId[this]; }
            set { Fields.TaskId[this] = value; }
        }

        [DisplayName("Month"), Column("month"), NotNull]
        public Int32? Month
        {
            get { return Fields.Month[this]; }
            set { Fields.Month[this] = value; }
        }

        [DisplayName("Year"), Column("year"), NotNull]
        public Int32? Year
        {
            get { return Fields.Year[this]; }
            set { Fields.Year[this] = value; }
        }

        [DisplayName("Month And Year"), Column("monthAndYear"), Size(16), QuickSearch]
        public String MonthAndYear
        {
            get { return Fields.MonthAndYear[this]; }
            set { Fields.MonthAndYear[this] = value; }
        }

        [DisplayName("Shop Grade Id"), Column("shopGradeId")]
        public Int32? ShopGradeId
        {
            get { return Fields.ShopGradeId[this]; }
            set { Fields.ShopGradeId[this] = value; }
        }

        [DisplayName("Total Amount Ratio"), Column("totalAmountRatio"), Size(20)]
        public String TotalAmountRatio
        {
            get { return Fields.TotalAmountRatio[this]; }
            set { Fields.TotalAmountRatio[this] = value; }
        }

        [DisplayName("Total Amount"), Column("totalAmount")]
        public Int32? TotalAmount
        {
            get { return Fields.TotalAmount[this]; }
            set { Fields.TotalAmount[this] = value; }
        }

        [DisplayName("Total Reward Money"), Column("totalRewardMoney"), Size(8), Scale(2)]
        public Decimal? TotalRewardMoney
        {
            get { return Fields.TotalRewardMoney[this]; }
            set { Fields.TotalRewardMoney[this] = value; }
        }

        [DisplayName("Sm Aomout"), Column("SMAomout")]
        public Int32? SmAomout
        {
            get { return Fields.SmAomout[this]; }
            set { Fields.SmAomout[this] = value; }
        }

        [DisplayName("Sm Aomout Ratio"), Column("SMAomoutRatio"), Size(20)]
        public String SmAomoutRatio
        {
            get { return Fields.SmAomoutRatio[this]; }
            set { Fields.SmAomoutRatio[this] = value; }
        }

        [DisplayName("Sm Reward Money"), Column("SMRewardMoney"), Size(8), Scale(2)]
        public Decimal? SmRewardMoney
        {
            get { return Fields.SmRewardMoney[this]; }
            set { Fields.SmRewardMoney[this] = value; }
        }

        [DisplayName("Tv Amount"), Column("TVAmount")]
        public Int32? TvAmount
        {
            get { return Fields.TvAmount[this]; }
            set { Fields.TvAmount[this] = value; }
        }

        [DisplayName("Tv Amount Ratio"), Column("TVAmountRatio"), Size(20)]
        public String TvAmountRatio
        {
            get { return Fields.TvAmountRatio[this]; }
            set { Fields.TvAmountRatio[this] = value; }
        }

        [DisplayName("Tv Reward Money"), Column("TVRewardMoney"), Size(8), Scale(2)]
        public Decimal? TvRewardMoney
        {
            get { return Fields.TvRewardMoney[this]; }
            set { Fields.TvRewardMoney[this] = value; }
        }

        [DisplayName("Real Shop Appearance Score"), Column("realShopAppearanceScore")]
        public Int32? RealShopAppearanceScore
        {
            get { return Fields.RealShopAppearanceScore[this]; }
            set { Fields.RealShopAppearanceScore[this] = value; }
        }

        [DisplayName("Real Shop Appearance Reward Money"), Column("realShopAppearanceRewardMoney"), Size(8), Scale(2)]
        public Decimal? RealShopAppearanceRewardMoney
        {
            get { return Fields.RealShopAppearanceRewardMoney[this]; }
            set { Fields.RealShopAppearanceRewardMoney[this] = value; }
        }

        [DisplayName("Statistical Time"), Column("statisticalTime")]
        public DateTime? StatisticalTime
        {
            get { return Fields.StatisticalTime[this]; }
            set { Fields.StatisticalTime[this] = value; }
        }

        [DisplayName("Statistical Remark"), Column("statisticalRemark"), Size(1024)]
        public String StatisticalRemark
        {
            get { return Fields.StatisticalRemark[this]; }
            set { Fields.StatisticalRemark[this] = value; }
        }

        [DisplayName("Final Policy Money"), Column("finalPolicyMoney"), Size(8), Scale(2)]
        public Decimal? FinalPolicyMoney
        {
            get { return Fields.FinalPolicyMoney[this]; }
            set { Fields.FinalPolicyMoney[this] = value; }
        }

        [DisplayName("Final Sum Money"), Column("finalSumMoney"), Size(8), Scale(2)]
        public Decimal? FinalSumMoney
        {
            get { return Fields.FinalSumMoney[this]; }
            set { Fields.FinalSumMoney[this] = value; }
        }

        [DisplayName("Final Max Money"), Column("finalMaxMoney"), Size(8), Scale(2)]
        public Decimal? FinalMaxMoney
        {
            get { return Fields.FinalMaxMoney[this]; }
            set { Fields.FinalMaxMoney[this] = value; }
        }

        [DisplayName("Area Manager Id"), Column("areaManagerId")]
        public Int32? AreaManagerId
        {
            get { return Fields.AreaManagerId[this]; }
            set { Fields.AreaManagerId[this] = value; }
        }

        [DisplayName("User Special Award"), Column("userSpecialAward"), Size(8), Scale(2)]
        public Decimal? UserSpecialAward
        {
            get { return Fields.UserSpecialAward[this]; }
            set { Fields.UserSpecialAward[this] = value; }
        }

        [DisplayName("Platform Special Award"), Column("platformSpecialAward"), Size(8), Scale(2)]
        public Decimal? PlatformSpecialAward
        {
            get { return Fields.PlatformSpecialAward[this]; }
            set { Fields.PlatformSpecialAward[this] = value; }
        }

        [DisplayName("Special Amount Rate"), Column("specialAmountRate"), Size(20)]
        public String SpecialAmountRate
        {
            get { return Fields.SpecialAmountRate[this]; }
            set { Fields.SpecialAmountRate[this] = value; }
        }

        [DisplayName("Special Amount"), Column("specialAmount")]
        public Int32? SpecialAmount
        {
            get { return Fields.SpecialAmount[this]; }
            set { Fields.SpecialAmount[this] = value; }
        }

        [DisplayName("Score Of Month"), Column("scoreOfMonth")]
        public Int32? ScoreOfMonth
        {
            get { return Fields.ScoreOfMonth[this]; }
            set { Fields.ScoreOfMonth[this] = value; }
        }

        [DisplayName("Score Of Month Ratio"), Column("scoreOfMonthRatio"), Size(20)]
        public String ScoreOfMonthRatio
        {
            get { return Fields.ScoreOfMonthRatio[this]; }
            set { Fields.ScoreOfMonthRatio[this] = value; }
        }

        [DisplayName("Recognized Amount"), Column("recognizedAmount"), Size(18)]
        public Decimal? RecognizedAmount
        {
            get { return Fields.RecognizedAmount[this]; }
            set { Fields.RecognizedAmount[this] = value; }
        }

        [DisplayName("Is Received Confirmation"), Column("isReceivedConfirmation")]
        public Boolean? IsReceivedConfirmation
        {
            get { return Fields.IsReceivedConfirmation[this]; }
            set { Fields.IsReceivedConfirmation[this] = value; }
        }

        [DisplayName("Is Confirm Prototype Amountunt"), Column("isConfirmPrototypeAmountunt")]
        public Boolean? IsConfirmPrototypeAmountunt
        {
            get { return Fields.IsConfirmPrototypeAmountunt[this]; }
            set { Fields.IsConfirmPrototypeAmountunt[this] = value; }
        }

        [DisplayName("Is Confirm Special Amount"), Column("isConfirmSpecialAmount")]
        public Boolean? IsConfirmSpecialAmount
        {
            get { return Fields.IsConfirmSpecialAmount[this]; }
            set { Fields.IsConfirmSpecialAmount[this] = value; }
        }

        [DisplayName("Is Confirm Brand Amount"), Column("isConfirmBrandAmount")]
        public Boolean? IsConfirmBrandAmount
        {
            get { return Fields.IsConfirmBrandAmount[this]; }
            set { Fields.IsConfirmBrandAmount[this] = value; }
        }

        [DisplayName("Gdp Amount Ratio"), Column("GDPAmountRatio"), Size(20)]
        public String GdpAmountRatio
        {
            get { return Fields.GdpAmountRatio[this]; }
            set { Fields.GdpAmountRatio[this] = value; }
        }

        [DisplayName("Gdp Amount"), Column("GDPAmount")]
        public Int32? GdpAmount
        {
            get { return Fields.GdpAmount[this]; }
            set { Fields.GdpAmount[this] = value; }
        }

        [DisplayName("Gdp Reward Money"), Column("GDPRewardMoney"), Size(8), Scale(2)]
        public Decimal? GdpRewardMoney
        {
            get { return Fields.GdpRewardMoney[this]; }
            set { Fields.GdpRewardMoney[this] = value; }
        }

        [DisplayName("Score Reward Money"), Size(8), Scale(2)]
        public Decimal? ScoreRewardMoney
        {
            get { return Fields.ScoreRewardMoney[this]; }
            set { Fields.ScoreRewardMoney[this] = value; }
        }

        [DisplayName("Tenant"), NotNull, ForeignKey("[dbo].[Tenants]", "Id"), LeftJoin("jTenant"), TextualField("TenantName")]
        public Int32? TenantId
        {
            get { return Fields.TenantId[this]; }
            set { Fields.TenantId[this] = value; }
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

        [DisplayName("User Platform Provider Manager Id"), Expression("jUser.[platformProviderManagerId]")]
        public Int32? PlatformId
        {
            get { return Fields.PlatformId[this]; }
            set { Fields.PlatformId[this] = value; }
        }

        [DisplayName("Platform Name"), Expression("jUser.[platformProviderManagerUserName]")]
        public String PlatformName
        {
            get { return Fields.PlatformName[this]; }
            set { Fields.PlatformName[this] = value; }
        }

        [DisplayName("User Area Manager Id"), Expression("jUser.[areaManagerId]")]
        public Int32? AreaId
        {
            get { return Fields.AreaId[this]; }
            set { Fields.AreaId[this] = value; }
        }

        [DisplayName("Area Name"), Expression("jUser.[areaManagerUserName]")]
        public String AreaName
        {
            get { return Fields.AreaName[this]; }
            set { Fields.AreaName[this] = value; }
        }

        [DisplayName("BigArea Id"),ForeignKey("dbo.Users","UserId"),LeftJoin("jUsers"),
            Expression("jUsers.[UserId]")]
        public Int32? BigAreaId
        {
            get { return Fields.BigAreaId[this]; }
            set { Fields.BigAreaId[this] = value; }
        }

        [DisplayName("BigArea Name"), Expression("jUsers.[UserName]")]
        public String BigAreaName
        {
            get { return Fields.BigAreaName[this]; }
            set { Fields.BigAreaName[this] = value; }
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

        [DisplayName("User Tenant Id"), Expression("jUser.[TenantId]")]
        public Int32? UserTenantId
        {
            get { return Fields.UserTenantId[this]; }
            set { Fields.UserTenantId[this] = value; }
        }

        [DisplayName("Tenant Name"), Expression("jTenant.[Name]")]
        public String TenantName
        {
            get { return Fields.TenantName[this]; }
            set { Fields.TenantName[this] = value; }
        }

        IIdField IIdRow.IdField
        {
            get { return Fields.Id; }
        }

        StringField INameRow.NameField
        {
            get { return Fields.MonthAndYear; }
        }

        public static readonly RowFields Fields = new RowFields().Init();

        public RewardMonthyStatisticalRow()
            : base(Fields)
        {
        }

        public class RowFields : RowFieldsBase
        {
            public Int32Field Id;
            public Int32Field UserId;
            public Int32Field PlatformProviderId;
            public Int32Field PolicyId;
            public Int32Field TaskId;
            public Int32Field Month;
            public Int32Field Year;
            public StringField MonthAndYear;
            public Int32Field ShopGradeId;
            public StringField TotalAmountRatio;
            public Int32Field TotalAmount;
            public DecimalField TotalRewardMoney;
            public Int32Field SmAomout;
            public StringField SmAomoutRatio;
            public DecimalField SmRewardMoney;
            public Int32Field TvAmount;
            public StringField TvAmountRatio;
            public DecimalField TvRewardMoney;
            public Int32Field RealShopAppearanceScore;
            public DecimalField RealShopAppearanceRewardMoney;
            public DateTimeField StatisticalTime;
            public StringField StatisticalRemark;
            public DecimalField FinalPolicyMoney;
            public DecimalField FinalSumMoney;
            public DecimalField FinalMaxMoney;
            public Int32Field AreaManagerId;
            public DecimalField UserSpecialAward;
            public DecimalField PlatformSpecialAward;
            public StringField SpecialAmountRate;
            public Int32Field SpecialAmount;
            public Int32Field ScoreOfMonth;
            public StringField ScoreOfMonthRatio;
            public DecimalField RecognizedAmount;
            public BooleanField IsReceivedConfirmation;
            public BooleanField IsConfirmPrototypeAmountunt;
            public BooleanField IsConfirmSpecialAmount;
            public BooleanField IsConfirmBrandAmount;
            public StringField GdpAmountRatio;
            public Int32Field GdpAmount;
            public DecimalField GdpRewardMoney;
            public DecimalField ScoreRewardMoney;
            public Int32Field TenantId;

            public StringField UserShopId;
            public StringField UserUserName;
            public Int32Field PlatformId;
            public StringField PlatformName;
            public Int32Field AreaId;
            public StringField AreaName;
            public Int32Field BigAreaId;
            public StringField BigAreaName;
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
            public Int32Field UserTenantId;

            public StringField TenantName;

            public RowFields()
                : base("[dbo].[RewardMonthyStatistical]")
            {
                LocalTextPrefix = "Aoc.RewardMonthyStatistical";
            }
        }
    }
}