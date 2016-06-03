

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/ManagerAccount", typeof(DiiL.Serene.Aoc.Pages.ManagerAccountController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ManagerAccount"), Route("{action=index}")]
    public class ManagerAccountController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ManagerAccount/ManagerAccountIndex.cshtml");
        }
    }
}