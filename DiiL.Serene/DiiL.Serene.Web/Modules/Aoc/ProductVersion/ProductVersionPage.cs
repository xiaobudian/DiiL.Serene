﻿


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/ProductVersion"), Route("{action=index}")]
    public class ProductVersionController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/ProductVersion/ProductVersionIndex.cshtml");
        }
    }
}