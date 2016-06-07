
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.SCity")]
    [BasedOnRow(typeof(Entities.SCityRow))]
    public class SCityForm
    {
        public Int32 ProvinceId { get; set; }
        public String CityName { get; set; }
        public String AreaCode { get; set; }
        public String ZipCode { get; set; }
    }
}