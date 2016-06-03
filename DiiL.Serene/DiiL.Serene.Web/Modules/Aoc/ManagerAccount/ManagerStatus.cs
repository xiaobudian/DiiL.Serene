using Serenity.ComponentModel;
using System.ComponentModel;

namespace DiiL.Serene.Aoc
{
    [EnumKey("Aoc.ManagerStatus")]
    public enum ManagerStatus
    {
        [Description("正常")]
        正常 = 1,
        [Description("禁用")]
        禁用 = 2,
        //[Description("未激活")]
        //MiniSeries = 3
    }
}