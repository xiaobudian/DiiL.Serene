
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.SProvince")]
    [BasedOnRow(typeof(Entities.SProvinceRow))]
    public class SProvinceForm
    {
        public String ProvinceName { get; set; }
    }
}