


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ScorePolicy"), Route("{action=index}")]
    public class ScorePolicyController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.ScorePolicy.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ScorePolicy/ScorePolicyIndex.cshtml");
        }
    }
}