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
            return View();
        }
        public ActionResult ssssssy()
        {
            return View();
        }
        public ActionResult Search()
        {
            return View();
        }
        public ActionResult item()
        {
            return View();
        }
        public ActionResult cart()
        {
            return View();
        }
        public ActionResult trade()
        {
            return View();
        }
        public ActionResult tradeok()
        {
            return View();
        }
        public ActionResult list()
        {
            return View();
        }
        public ActionResult profile()
        {
            return View();
        }
        public ActionResult collect()
        {
            return View();
        }
        public ActionResult selllist()
        {
            return View();
        }
        public ActionResult sell()
        {
            return View();
        }
        public ActionResult sellorder()
        {
            return View();
        }

    }
}
