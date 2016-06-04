

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/Sn", typeof(DiiL.Serene.Aoc.Pages.SnController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Sn"), Route("{action=index}")]
    public class SnController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Sn/SnIndex.cshtml");
        }
    }
}