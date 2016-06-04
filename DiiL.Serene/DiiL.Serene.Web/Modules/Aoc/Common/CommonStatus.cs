using Serenity.ComponentModel;
using System.ComponentModel;

namespace DiiL.Serene.Aoc
{
    [EnumKey("Aoc.CommonStatus")]
    public enum CommonStatus
    {
        [Description("启用")]
        启用 = 1,
        [Description("禁用")]
        禁用 = 2,
        //[Description("未激活")]
        //MiniSeries = 3

        //启用 禁用 
    }
}