


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ShopGrade"), Route("{action=index}")]
    public class ShopGradeController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.ShopGrade.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ShopGrade/ShopGradeIndex.cshtml");
        }
    }
}