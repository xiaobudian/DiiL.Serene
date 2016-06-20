


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ManagerRole"), Route("{action=index}")]
    public class ManagerRoleController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.ManagerRole.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ManagerRole/ManagerRoleIndex.cshtml");
        }
    }
}