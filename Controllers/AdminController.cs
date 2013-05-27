using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Methods;
using Yiku.Models.DataBase;

namespace Yiku.Controllers
{
    public class AdminController : Controller
    {
        YikuDataRepository yikuData = new YikuDataRepository();
        //
        // GET: /Admin/
        [UserLog(Roles= "Admin")]
        public ActionResult Index()
        {
            
            return View();
        }

        [UserLog(Roles = "Admin")]
        public ActionResult Users()
        {
            IQueryable<User> users = yikuData.UsersGetByRole("User");
            return View(users);
        }

        [UserLog(Roles = "Admin")]
        public ActionResult Items()
        {
            IQueryable<Item> items = yikuData.ItemGetByExist();
            return View(items);
        }

        [UserLog(Roles = "Admin")]
        public ActionResult Classes()
        {
            ViewData["ErrorMessage"] = "";
            return View(yikuData.GetClasses());
        }

        [HttpPost, UserLog(Roles = "Admin")]
        public ActionResult Classes(FormCollection value)
        {
            ViewData["ErrorMessage"] = "";
            if(!string.IsNullOrEmpty(Request.Form["cName"]) ){
                ClassM classm = new ClassM();
                classm.Name = Request.Form["cName"];
                if(!string.IsNullOrEmpty(Request.Form["cFatherID"]) ){
                    try { classm.FatherID = Convert.ToInt32(Request.Form["cFatherID"]); }
                    catch { }
                }

                yikuData.Add(classm);
                yikuData.Save();
            }


            int eID = -1;
            try{ eID = Convert.ToInt32(Request.Form["eID"]);}
            catch{; }

            if(eID > 0){
                ClassM classm = yikuData.GetClass(eID);
                if (classm != null)
                {
                    if (!string.IsNullOrEmpty(Request.Form["eName"]))
                        classm.Name = Request.Form["eName"];
                    if (!string.IsNullOrEmpty(Request.Form["eFatherID"]))
                    {
                        try { classm.FatherID = Convert.ToInt32(Request.Form["eFatherID"]); }
                        catch { }
                    }
                    yikuData.Save();
                }
            }

            return View(yikuData.GetClasses());
        }

    }
}
