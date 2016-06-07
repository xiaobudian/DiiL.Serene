

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/SDistrict", typeof(DiiL.Serene.Aoc.Pages.SDistrictController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SDistrict"), Route("{action=index}")]
    public class SDistrictController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SDistrict/SDistrictIndex.cshtml");
        }
    }
}