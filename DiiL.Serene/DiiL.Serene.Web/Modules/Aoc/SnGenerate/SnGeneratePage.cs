


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SnGenerate"), Route("{action=index}")]
    public class SnGenerateController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.SnGenerate.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SnGenerate/SnGenerateIndex.cshtml");
        }
    }
}