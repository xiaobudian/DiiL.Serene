

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/RewardMonthyStatistical", typeof(DiiL.Serene.Aoc.Pages.RewardMonthyStatisticalController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/RewardMonthyStatistical"), Route("{action=index}")]
    public class RewardMonthyStatisticalController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/RewardMonthyStatistical/RewardMonthyStatisticalIndex.cshtml");
        }
    }
}