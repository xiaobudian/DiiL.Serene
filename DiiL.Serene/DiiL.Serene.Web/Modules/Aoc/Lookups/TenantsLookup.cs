using DiiL.Serene.Aoc.Entities;
using Serenity.ComponentModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiiL.Serene.Aoc
{
    [LookupScript("Aoc.Tenants")]
    public class TenantsLookup : MultiTenantRowLookupScript<TenantsRow>
    {
    }
}