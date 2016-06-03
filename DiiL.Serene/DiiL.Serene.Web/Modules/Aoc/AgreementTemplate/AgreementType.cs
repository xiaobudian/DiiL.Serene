using Serenity.ComponentModel;
using System.ComponentModel;

namespace DiiL.Serene.Aoc
{
    [EnumKey("Aoc.AgreementTypes")]
    public enum AgreementTypes
    {
        [Description("三方协议")]
        三方协议 = 1,
        [Description("四方协议")]
        四方协议 = 2,
    }
}