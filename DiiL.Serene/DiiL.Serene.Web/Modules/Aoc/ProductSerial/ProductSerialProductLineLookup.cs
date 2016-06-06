using Serenity.ComponentModel;
using Serenity.Data;
using Serenity.Web;

namespace DiiL.Serene.Aoc
{
    [LookupScript("Aoc.ProductSerialProductLine")]
    public class ProductSerialProductLineLookup
        : RowLookupScript<Entities.ProductSerialRow>
    {
        public ProductSerialProductLineLookup()
        {
            IdField = "Id";
            TextField = "Name";
        }

        protected override void PrepareQuery(SqlQuery query)
        {
            var fld = Entities.ProductSerialRow.Fields;
            var fld2 = Entities.ProductVersionRow.Fields;
            query.Select(fld.ProductLineId, fld.Name)
                .Where(new Criteria(fld.ProductLineId) ==2 );
        }

    }
}