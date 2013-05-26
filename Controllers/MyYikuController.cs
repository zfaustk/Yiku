using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Models.DataBase;
using Yiku.Models;

namespace Yiku.Controllers
{
    public class MyYikuController : Controller
    {
        YikuDataRepository yikuData = new YikuDataRepository();
        
        public ActionResult Index()
        {
            ViewData["MyYiku"] = "";
            return RedirectToAction("trade", "MyYiku");
        }

        public ActionResult cart()
        {
            return View();
        }

        [Authorize]
        public ActionResult profile()
        {
            ViewData["MyYiku"] = "profile";
            return View(yikuData.UserCurrent);
        }

        [HttpPost, Authorize]
        public ActionResult profile(User user)
        {
            UpdateModel(yikuData.UserCurrent);
            yikuData.Save();

            ViewData["MyYiku"] = "profile";
            return View(yikuData.UserCurrent);
        }

        [Authorize]
        public ActionResult collect(int? page)
        {
            
            CollectModels clm = new CollectModels();
            clm.skip = (page == null) ? 0 : page.Value;

            ViewData["MyYiku"] = "collect";
            return View(clm);
        }

        public ActionResult trade()
        {
            ViewData["MyYiku"] = "trade";
            OrderModels om = new OrderModels();
            return View(om );
        }

        public ActionResult list()
        {
            return View(yikuData.GetOrders(yikuData.UserCurrent));
        }
        

        [Authorize]
        public ActionResult sell()
        {
            SellModel slm = new SellModel();

            ViewData["MyYiku"] = "sell";
            return View(slm);
        }

        public ActionResult order()
        {
            ViewData["MyYiku"] = "order";
            return View();
        }

    }
}
