using DiiL.Serene.Aoc.Entities;
using Serenity;
using Serenity.ComponentModel;
using Serenity.Data;

namespace DiiL.Serene.Aoc
{
    [LookupScript("Aoc.ShopGradeChildren")]
    public class ShopGradeChildren : MultiTenantRowLookupScript<ShopGradeRow>
    {
        protected override void PrepareQuery(SqlQuery query)
        {
            base.PrepareQuery(query);
            var r = new ShopGradeRow();
            var criteria = new Criteria(" parentId<>0 ");
            query.Where(criteria);
        }
    }
}