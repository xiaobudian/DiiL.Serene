


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Region"), Route("{action=index}")]
    public class RegionController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.Region.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Region/RegionIndex.cshtml");
        }
    }
}