

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/Agreement", typeof(DiiL.Serene.Aoc.Pages.AgreementController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Agreement"), Route("{action=index}")]
    public class AgreementController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Agreement/AgreementIndex.cshtml");
        }
    }
}