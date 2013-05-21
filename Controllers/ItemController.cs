using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Yiku.Methods;
using Yiku.Models;
using Yiku.Models.DataBase;



namespace Yiku.Controllers
{
    public class ItemController : Controller
    {
        YikuDataRepository yikuData = new YikuDataRepository();
        //
        // GET: /Item/

        public ActionResult Index()
        {
            return View();
        }

        //
        // GET: /Item/Details/5

        public ActionResult Details(int id)
        {
            ItemModels itemModel = new ItemModels();
            itemModel.item = yikuData.GetItem(id);
            if(itemModel.Exist)
                return View(itemModel);
            else
                return RedirectToAction("Index", "Home");
        }

        //
        // GET: /Item/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Item/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Item/Edit/5
 
        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /Item/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Item/Delete/5
 
        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Item/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here
 
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
