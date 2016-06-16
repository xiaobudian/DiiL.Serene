﻿


namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SCity"), Route("{action=index}")]
    public class SCityController : Controller
    {
        [PageAuthorize("Administration")]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SCity/SCityIndex.cshtml");
        }
    }
}