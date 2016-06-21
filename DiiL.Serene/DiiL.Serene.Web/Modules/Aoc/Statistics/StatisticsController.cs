
namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Statistics"), Route("{action=index}")]
    public class StatisticsController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View(MVC.Views.Aoc.Statistics.StatisticsIndex);
        }
    }
}