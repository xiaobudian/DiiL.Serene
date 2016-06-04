﻿

[assembly:Serenity.Navigation.NavigationLink(int.MaxValue, "Aoc/SnImport", typeof(DiiL.Serene.Aoc.Pages.SnImportController))]

namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SnImport"), Route("{action=index}")]
    public class SnImportController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SnImport/SnImportIndex.cshtml");
        }
    }
}