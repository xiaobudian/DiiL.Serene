﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DiiL.Serene.Aoc
{
    using Administration;
    using Serenity;
    using Serenity.Data;
    using Serenity.Web;
    using System;
    public abstract class MultiTenantRowLookupScript<TRow> :
        RowLookupScript<TRow> where TRow : Row, IMultiTenantRow, new()
    {
        public MultiTenantRowLookupScript()
        {
            Expiration = TimeSpan.FromDays(-1);
        }
        protected override void PrepareQuery(SqlQuery query)
        {
            base.PrepareQuery(query);
            AddTenantFilter(query);
        }
        protected void AddTenantFilter(SqlQuery query)
        {
            var r = new TRow();
            var user = (UserDefinition)Authorization.UserDefinition;
            if (!Authorization.HasPermission(Administration.PermissionKeys.Tenants) || user.TenantId != 4)
            {
                query.Where(r.TenantIdField == user.TenantId);
            }

        }
        public override string GetScript()
        {
            return TwoLevelCache.GetLocalStoreOnly("MultiTenantLookup:" +
            this.ScriptName + ":" +
            ((UserDefinition)Authorization.UserDefinition).TenantId,
            TimeSpan.FromHours(1),
            new TRow().GetFields().GenerationKey, () =>
            {
                return base.GetScript();
            });
        }
    }
}