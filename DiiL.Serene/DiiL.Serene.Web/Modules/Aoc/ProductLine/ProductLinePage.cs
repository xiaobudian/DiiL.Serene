

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/ProductLine", typeof(DiiL.Serene.Aoc.Pages.ProductLineController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ProductLine"), Route("{action=index}")]
    public class ProductLineController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ProductLine/ProductLineIndex.cshtml");
        }
    }
}