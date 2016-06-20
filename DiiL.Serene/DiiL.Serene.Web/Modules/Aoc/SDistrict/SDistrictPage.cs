


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SDistrict"), Route("{action=index}")]
    public class SDistrictController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.SDistrict.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SDistrict/SDistrictIndex.cshtml");
        }
    }
}