


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SnImport"), Route("{action=index}")]
    public class SnImportController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.SnImport.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SnImport/SnImportIndex.cshtml");
        }
    }
}