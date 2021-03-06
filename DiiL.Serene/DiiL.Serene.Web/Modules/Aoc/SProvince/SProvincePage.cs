﻿



namespace DiiL.Serene.Aoc.Pages
{
    using Serenity;
    using Serenity.Web;
    using System.Web.Mvc;

    [RoutePrefix("Aoc/SProvince"), Route("{action=index}")]
    public class SProvinceController : Controller
    {
        [PageAuthorize(Aoc.PermissionKeys.SProvince.View)]
        public ActionResult Index()
        {
            return View("~/Modules/Aoc/SProvince/SProvinceIndex.cshtml");
        }
    }
}