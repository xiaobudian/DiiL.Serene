

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/Tenants", typeof(DiiL.Serene.Aoc.Pages.TenantsController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/Tenants"), Route("{action=index}")]
    public class TenantsController : Controller
    {
        [PageAuthorize(Administration.PermissionKeys.Tenants)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/Tenants/TenantsIndex.cshtml");
        }
    }
}