
namespace DiiL.Serene.Aoc.Columns
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [ColumnsScript("Aoc.Agreement")]
    [BasedOnRow(typeof(Entities.AgreementRow))]
    public class AgreementColumns
    {
        [EditLink, DisplayName("Db.Shared.RecordId"), AlignRight]
        public Int32 AgreementId { get; set; }
        //public Int32 UserId { get; set; }
        //[EditLink]
        //public String ShopId { get; set; }
        //public Int32 PlatformProviderManagerId { get; set; }
        //public String AreaProviderCompanyName { get; set; }
        //public Int32 AreaManagerId { get; set; }
        //public Int32 AgreementTemplate { get; set; }
        public Int32 AgrementYearOfDate { get; set; }
        public Int32 AgreementType { get; set; }
        public String AgreementStatus { get; set; }
        public String AgreementContent { get; set; }
        public DateTime BeginTime { get; set; }
        public DateTime EndTime { get; set; }
        public String ApproveFlow { get; set; }
        public Int32 NextApproveRole { get; set; }
        public String Attachment { get; set; }
        public DateTime CreateTime { get; set; }
        public String Clienttype { get; set; }
        public String Fixture { get; set; }
        public Int32 Samplenum { get; set; }
        public Decimal Samplemoney { get; set; }
        public DateTime Sampledate { get; set; }
        public DateTime RentLimitTime { get; set; }
        public String Shopdoortype { get; set; }
        public String IdCardNumber { get; set; }
        public String Name { get; set; }
        public String MobilePhoneNumber { get; set; }
        public String Email { get; set; }
        public Int32 ShopGrade { get; set; }
        public Int32 AddrProvinceId { get; set; }
        public Int32 AddrCityId { get; set; }
        public Int32 AddrDistrictId { get; set; }
        public String AddrProvince { get; set; }
        public String AddrCity { get; set; }
        public String AddrDistrict { get; set; }
        public String AddrTown { get; set; }
        public String AddrStreet { get; set; }
        public String AddrDetail { get; set; }
        public String ShopName { get; set; }
        public String CompanyName { get; set; }
        public String ShopUrl { get; set; }
        public String Lanhaifuzeren { get; set; }
        public Boolean IsFirstAgreement { get; set; }
        public Boolean IsRealShop { get; set; }
        public String Wangwang { get; set; }
        public Int32 TotalAmount { get; set; }
        public Int32 ModelAmount { get; set; }
        public String AmountRatio { get; set; }
        public String Dpxz { get; set; }
        public DateTime OriginOpenTime { get; set; }
    }
}