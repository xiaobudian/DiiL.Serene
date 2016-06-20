


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ManagerAccount"), Route("{action=index}")]
    public class ManagerAccountController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.ManagerAccount.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ManagerAccount/ManagerAccountIndex.cshtml");
        }
    }
}