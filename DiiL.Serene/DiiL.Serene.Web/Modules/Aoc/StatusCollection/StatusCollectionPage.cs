

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/StatusCollection", typeof(DiiL.Serene.Aoc.Pages.StatusCollectionController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/StatusCollection"), Route("{action=index}")]
    public class StatusCollectionController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.StatusCollection.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/StatusCollection/StatusCollectionIndex.cshtml");
        }
    }
}