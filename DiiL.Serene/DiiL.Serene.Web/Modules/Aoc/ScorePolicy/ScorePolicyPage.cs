

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/ScorePolicy", typeof(DiiL.Serene.Aoc.Pages.ScorePolicyController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ScorePolicy"), Route("{action=index}")]
    public class ScorePolicyController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ScorePolicy/ScorePolicyIndex.cshtml");
        }
    }
}