using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Models;


namespace Yiku.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {

        public ActionResult Index()
        {
            ViewData["Message"] = "欢迎使用 ASP.NET MVC!";

            HomeModels hm = new HomeModels();

            return View(hm);
        }

        public ActionResult About()
        {
            return RedirectToAction("trade", "MyYiku");
        }
        public ActionResult ssssssy()
        {
            return RedirectToAction("trade", "MyYiku");
        }
    }
}
