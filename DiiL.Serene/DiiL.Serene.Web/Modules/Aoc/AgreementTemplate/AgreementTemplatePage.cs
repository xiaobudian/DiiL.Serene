


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/AgreementTemplate"), Route("{action=index}")]
    public class AgreementTemplateController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/AgreementTemplate/AgreementTemplateIndex.cshtml");
        }
    }
}