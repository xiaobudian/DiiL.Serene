
namespace DiiL.Serene.Aoc.Forms
{
    using Serenity;
    using Serenity.ComponentModel;
    using Serenity.Data;
    using System;
    using System.ComponentModel;
    using System.Collections.Generic;
    using System.IO;

    [FormScript("Aoc.StatusCollection")]
    [BasedOnRow(typeof(Entities.StatusCollectionRow))]
    public class StatusCollectionForm
    {
        public String Name { get; set; }
        public DateTime CreateTime { get; set; }
    }
}