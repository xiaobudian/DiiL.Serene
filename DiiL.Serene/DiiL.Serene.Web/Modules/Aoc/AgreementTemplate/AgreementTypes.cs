using Serenity.ComponentModel;
using System.ComponentModel;

namespace DiiL.Serene.Aoc
{
    [EnumKey("Aoc.AgreementTypes")]
    public enum AgreementTypes
    {
        [Description("电商")]
        电商 = 2,
        [Description("三方协议")]
        三方协议 = 3,
        [Description("四方协议")]
        四方协议 = 4,
    }
}