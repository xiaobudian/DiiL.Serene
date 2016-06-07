
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.SDistrict")]
    [BasedOnRow(typeof(Entities.SDistrictRow))]
    public class SDistrictForm
    {
        public String DistrictName { get; set; }
        public Int32 CityId { get; set; }
    }
}