

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/ProductSerial", typeof(DiiL.Serene.Aoc.Pages.ProductSerialController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ProductSerial"), Route("{action=index}")]
    public class ProductSerialController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ProductSerial/ProductSerialIndex.cshtml");
        }
    }
}