using Serenity.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DiiL.Serene.Aoc
{
    public interface IMultiTenantRow
    {
        Int32Field TenantIdField { get; }
    }
}
