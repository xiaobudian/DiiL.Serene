

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/SProvince", typeof(DiiL.Serene.Aoc.Pages.SProvinceController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SProvince"), Route("{action=index}")]
    public class SProvinceController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SProvince/SProvinceIndex.cshtml");
        }
    }
}