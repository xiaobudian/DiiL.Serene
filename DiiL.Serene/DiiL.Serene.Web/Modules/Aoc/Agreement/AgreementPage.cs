


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Agreement"), Route("{action=index}")]
    public class AgreementController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.Agreement.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Agreement/AgreementIndex.cshtml");
        }
    }
}