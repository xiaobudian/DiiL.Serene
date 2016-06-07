

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/Region", typeof(DiiL.Serene.Aoc.Pages.RegionController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Region"), Route("{action=index}")]
    public class RegionController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Region/RegionIndex.cshtml");
        }
    }
}