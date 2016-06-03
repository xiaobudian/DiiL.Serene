

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/ShopGrade", typeof(DiiL.Serene.Aoc.Pages.ShopGradeController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ShopGrade"), Route("{action=index}")]
    public class ShopGradeController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ShopGrade/ShopGradeIndex.cshtml");
        }
    }
}