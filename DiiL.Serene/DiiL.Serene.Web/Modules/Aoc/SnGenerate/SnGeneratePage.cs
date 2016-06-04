

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/SnGenerate", typeof(DiiL.Serene.Aoc.Pages.SnGenerateController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SnGenerate"), Route("{action=index}")]
    public class SnGenerateController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SnGenerate/SnGenerateIndex.cshtml");
        }
    }
}