using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Models.DataBase;
using Yiku.Models;
using Yiku.Methods;

namespace Yiku.Controllers
{
    public class MyYikuController : Controller
    {
        YikuDataRepository yikuData = new YikuDataRepository();
        
        [UserLog]
        public ActionResult Index()
        {
            ViewData["MyYiku"] = "";
            return RedirectToAction("trade", "MyYiku");
        }

        [UserLog]
        public ActionResult profile()
        {
            ViewData["MyYiku"] = "profile";
            return View(yikuData.UserCurrent);
        }

        [HttpPost, UserLog]
        public ActionResult profile(User user)
        {
            UpdateModel(yikuData.UserCurrent);
            yikuData.Save();

            ViewData["MyYiku"] = "profile";
            return View(yikuData.UserCurrent);
        }

        [UserLog]
        public ActionResult collect(int? page)
        {
            
            CollectModels clm = new CollectModels();
            clm.skip = (page == null) ? 0 : page.Value;
            
            ViewData["MyYiku"] = "collect";
            return View(clm);
        }

        [UserLog]
        public ActionResult trade()
        {
            ViewData["MyYiku"] = "trade";
            TradeModels tm = new TradeModels();
            return View(tm );
        }


        [UserLog]
        public ActionResult sell()
        {
            SellModel slm = new SellModel();

            ViewData["MyYiku"] = "sell";
            return View(slm);
        }

        [UserLog]
        public ActionResult order(bool? Pay)
        {
            ViewData["MyYiku"] = "order";


            OrderModels om = new OrderModels();
            return View(om);
        }

    }
}
