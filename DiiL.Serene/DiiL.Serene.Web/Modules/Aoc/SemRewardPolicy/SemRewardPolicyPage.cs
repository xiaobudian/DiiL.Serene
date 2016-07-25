

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/SemRewardPolicy", typeof(DiiL.Serene.Aoc.Pages.SemRewardPolicyController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SemRewardPolicy"), Route("{action=index}")]
    public class SemRewardPolicyController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SemRewardPolicy/SemRewardPolicyIndex.cshtml");
        }
    }
}