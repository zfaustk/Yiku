﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Yiku.Methods;
using Yiku.Models;
using Yiku.Models.DataBase;
using System.IO;



namespace Yiku.Controllers
{
    public class ItemController : Controller
    {
        YikuDataRepository yikuData = new YikuDataRepository();
        //
        // GET: /Item/

        public ActionResult Index()
        {
            return RedirectToAction("Search", "Item");
        }

        //
        // GET: /Item/Details/5
        [UserLog]
        public ActionResult Collect(int? id , bool? Delete)
        {
            if (id != null)
            {
                Item item = yikuData.GetItem(id.Value);
                if (item != null)
                {
                    yikuData.AddCollection(yikuData.UserCurrent, item);
                    yikuData.Save();
                    if(Delete != null && Delete.Value == true)
                        return RedirectToAction("DeleteShopping", "Item", new { ID = id.Value });
                    else
                        return RedirectToAction("Details", "Item", new { ID = id.Value });
                }           
            }
            return RedirectToAction("Index", "Item");
        }

        [UserLog]
        public ActionResult Buy(int? id)
        {
            if (!CurrentUser.IsAuthenticated) return RedirectToAction("LogIn", "Account");
            if (id != null)
            {
                Item item = yikuData.GetItem(id.Value);
                T_Shopping tsh = new T_Shopping();
                if (item != null)
                {
                    if (item.PublisherID == yikuData.UserCurrent.UID) return RedirectToAction("Details", "Item", new { ID = id.Value });
                    tsh = yikuData.AddShopping(yikuData.UserCurrent, item);
                    yikuData.Save();
                    return RedirectToAction("Index", "Cart");
                }
            }
            return RedirectToAction("Index", "Item");
        }

        [UserLog]
        public ActionResult DeclineShopping(int? id)
        {
            if (!CurrentUser.IsAuthenticated) return RedirectToAction("LogIn", "Account");
            if (id != null)
            {
                Item item = yikuData.GetItem(id.Value);
                T_Shopping tsh = new T_Shopping();
                if (item != null)
                {
                    if (item.PublisherID == yikuData.UserCurrent.UID) return RedirectToAction("Details", "Item", new { ID = id.Value });
                    tsh = yikuData.DeleteShopping(yikuData.UserCurrent, item, 1);
                    yikuData.Save();
                    return RedirectToAction("Index", "Cart");
                }
            }
            return RedirectToAction("Index", "Item");
        }

        [UserLog]
        public ActionResult DeleteShopping(int? id)
        {
            if (!CurrentUser.IsAuthenticated) return RedirectToAction("LogIn", "Account");
            if (id != null)
            {
                Item item = yikuData.GetItem(id.Value);
                if (item != null)
                {
                    yikuData.DeleteShopping(yikuData.UserCurrent, item);
                    yikuData.Save();
                    return RedirectToAction("Index", "Cart");
                }
            }
            return RedirectToAction("Index", "Item");
        }

        [UserLog]
        public ActionResult DeleteCollect(int? id)
        {
            if (!CurrentUser.IsAuthenticated) return RedirectToAction("LogIn", "Account");
            if (id != null)
            {
                Item item = yikuData.GetItem(id.Value);
                if (item != null)
                {
                    yikuData.DeleteCollection(yikuData.UserCurrent, item);
                    yikuData.Save();
                    return RedirectToAction("Collect", "MyYiku");
                }
            }
            return RedirectToAction("Index", "Item");
        }

        public ActionResult Details(int? id)
        {
            if (id != null)
            {
                ItemModels itemModel = new ItemModels();
                itemModel.item = yikuData.GetItem(id.Value);
                if (itemModel.Exist)
                    return View(itemModel);
            }
            return RedirectToAction("Index", "Item");
        }

        public ActionResult Error(int? Id, string Errorm)
        {
            ViewData["ErrorMessage"] = Errorm;
            return View(Id);
        }

        [HttpPost]
        public ActionResult Details(int id, FormCollection collection)
        {
            if(!CurrentUser.IsAuthenticated)return RedirectToAction("LogIn", "Account");

            int num = 0;
            if (!string.IsNullOrEmpty(Request.Form["BuyNumber"]))
                try
                {
                    num = Convert.ToInt32(Request.Form["BuyNumber"]);
                }
                catch { return RedirectToAction("Error", "Item", new { Id = id, Errorm = "请输入正确的购买数量" }); }
            else
                return RedirectToAction("Error", "Item", new { Id = id, Errorm = "请输入购买数量" });

            Item item = yikuData.GetItem(id);
            T_Shopping tsh = new T_Shopping();
            if(item != null){
                if (item.PublisherID == yikuData.UserCurrent.UID)
                    return RedirectToAction("Error", "Item", new { Id = id , Errorm = "不能购买自己的商品" });

                tsh = yikuData.AddShopping(yikuData.UserCurrent, item);
                yikuData.Save();
                tsh.Count += (num - 1);
                yikuData.Save();
                return RedirectToAction("Index", "Cart");
            }

            return RedirectToAction("Details", "Item", new { Id = id });
        }

        //
        // GET: /Item/Create
        [UserLog]
        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Item/Create

        [HttpPost, UserLog]
        public ActionResult Create(Item i)
        {
            try
            {
                Item item = new Item();
                UpdateModel(item);
                item.PublisherID = yikuData.UserCurrent.UID;
                item.Volume = 0;
                item.Exist = true;
                item.TimeCreate = DateTime.Now;
                yikuData.Add(item);
                yikuData.Save();

                return RedirectToAction("sell","MyYiku",null);
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Item/Edit/5
        [UserLog]
        public ActionResult Edit(int id)
        {
            return View(yikuData.GetItem(id));
        }

        //
        // POST: /Item/Edit/5

        [HttpPost, UserLog]
        public ActionResult Edit(int id, Item item)
        {
            try
            {
                // TODO: Add update logic here
                Item it = yikuData.GetItem(id);
                UpdateModel(it);

                if (!string.IsNullOrEmpty(Request.Form["ClassM"]))
                {
                    string str = Request.Form["ClassM"];
                    ClassM classm =yikuData.GetClass(str);
                    if (classm != null)
                    {
                        yikuData.AddClassify(it, classm);
                    }
                }

                yikuData.Save();

                return RedirectToAction("sell", "MyYiku", null);
            }
            catch
            {
                return View();
            }
        }

        [HttpPost, UserLog]
        public ActionResult EditImage(HttpPostedFileBase imgUpload, int id)
         {
             Picture pic = new Picture();
             if (ModelState.IsValid)
             {
                 if (imgUpload != null)
                 {
                     
                     string fileName = Path.GetFileName(Guid.NewGuid().ToString() + imgUpload.FileName);
                     var filePath = Path.Combine(Request.MapPath("~/Content/Image/Items"), fileName );
                     imgUpload.SaveAs(filePath);//保存Img图片
                     pic.IID = id;
                     pic.Route = fileName;
                     yikuData.PictureRemoveAll(yikuData.GetItem(id));
                     yikuData.Add(pic);
                     yikuData.Save();
                 }
             }
             return RedirectToAction("Edit", "Item", new { ID = id });
         }


        public ActionResult Search(string Uname, string strSearch, string Cname , int? pMin, int? pMax, int? skip)
        {
            SearchModel sm = new SearchModel();
            if (!String.IsNullOrEmpty(Uname))
            {
                if(null != yikuData.GetUser(Uname))
                sm.Uname = Uname;
            }
            if (!String.IsNullOrEmpty(Cname)) {
                if (null != yikuData.GetClass(Cname))
                sm.Cname = Cname; 
            }
            if (!String.IsNullOrEmpty(strSearch)) sm.strSearch = strSearch;
            if (pMin != null) sm.pMin = pMin.Value;
            if (pMax != null) sm.pMax = pMax.Value;
            if (skip != null) sm.skip = skip.Value;
            return View(sm);
        }

        [HttpPost]
        public ActionResult Search(FormCollection formValues)
        {
            SearchModel sm = new SearchModel();
            if (!string.IsNullOrEmpty(Request.Form["strSearch"])) sm.strSearch = Request.Form["strSearch"];
            if (!string.IsNullOrEmpty(Request.Form["Uname"]))
                if(yikuData.GetUser(Request.Form["Uname"]) != null)
                    sm.Uname = Request.Form["Uname"];
            if (!string.IsNullOrEmpty(Request.Form["Cname"]))
                if (yikuData.GetClass(Request.Form["Cname"]) != null) 
                    sm.Cname = Request.Form["Cname"];
            if (!string.IsNullOrEmpty(Request.Form["pMin"])) sm.pMin = Convert.ToInt32(Request.Form["pMin"]) ;
            if (!string.IsNullOrEmpty(Request.Form["pMax"])) sm.pMax = Convert.ToInt32(Request.Form["pMax"]) ;
            if (!string.IsNullOrEmpty(Request.Form["skip"])) sm.skip = Convert.ToInt32(Request.Form["skip"]) ;
            if (!string.IsNullOrEmpty(Request.Form["pageNumber"])) sm.pageNumber = Convert.ToInt32(Request.Form["pageNumber"]) ;

            return View(sm);
        }
    }
}
