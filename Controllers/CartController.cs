using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Models;
using Yiku.Models.DataBase;
using Yiku.Methods;

namespace Yiku.Controllers
{
    public class CartController : Controller
    {
        //
        YikuDataRepository yikuData = new YikuDataRepository();
        // GET: /Cart/

        public ActionResult Index()
        {
            return RedirectToAction("cart");
        }

        [UserLog]
        public ActionResult cart()
        {
            CartModels cm = new CartModels();
            return View(cm);
        }

        [HttpPost]
        public ActionResult cart(FormCollection collection)
        {
            string cosignee = yikuData.UserCurrent.Consignee;
            if (!string.IsNullOrEmpty(Request.Form["CurrentUser.Consignee"]))
                cosignee = Request.Form["CurrentUser.Consignee"];
            string Address = yikuData.UserCurrent.Address;
            if (!string.IsNullOrEmpty(Request.Form["CurrentUser.Consignee"]))
                cosignee = Request.Form["CurrentUser.Consignee"];

            CartModels cm = new CartModels();
            IQueryable<T_Shopping> TSHS = cm.TSHs;
            foreach (T_Shopping tsh in TSHS)
            {
                Order order = new Order();
                order.IID = tsh.IID;
                order.UID = cm.CurrentUser.UID;
                order.Count = tsh.Count;
                order.Cut = tsh.Cut;
                order.Time = DateTime.Now;
                order.Cost = tsh.Item.Price * tsh.Count;
                order.State = "pay";
                order.Address = Address;
                yikuData.Add(order);
                T_Shopping sss = yikuData.GetT_Shopping(tsh.T_Sh_ID);
                Item item = yikuData.GetItem(order.IID);
                item.Volume += order.Count;     //商品卖出量增加N份
                yikuData.Delete(sss);
            }
            yikuData.Save();
            return RedirectToAction("trade", "MyYiku");
        }

        [UserLog]
        public ActionResult Dealed(int? id)
        {
            if (id != null)
            {
                Order ord = yikuData.GetOrder(id.Value);
                if (ord != null)
                {
                    ord.State = "dealed";
                    yikuData.Save();
                }
            }
            return RedirectToAction("order", "MyYiku");
        }

        [UserLog]
        public ActionResult Recieved(int? id)
        {
            if (id != null)
            {
                Order ord = yikuData.GetOrder(id.Value);
                if (ord != null)
                {
                    ord.State = "recieved";
                    User u = yikuData.GetUser(ord.UID);
                    u.Point += Convert.ToInt32(ord.Count * ord.Item.Price / 10 );
                    yikuData.Save();
                }
            }
            return RedirectToAction("trade", "MyYiku");
        }

    }
}
