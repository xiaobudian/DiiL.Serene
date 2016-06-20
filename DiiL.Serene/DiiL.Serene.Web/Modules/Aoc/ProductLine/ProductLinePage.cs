


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ProductLine"), Route("{action=index}")]
    public class ProductLineController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.ProductLine.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ProductLine/ProductLineIndex.cshtml");
        }
    }
}