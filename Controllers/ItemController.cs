using System;
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
            return View();
        }

        //
        // GET: /Item/Details/5

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

        //
        // GET: /Item/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Item/Create

        [HttpPost, Authorize]
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
        [Authorize]
        public ActionResult Edit(int id)
        {
            return View(yikuData.GetItem(id));
        }

        //
        // POST: /Item/Edit/5

        [HttpPost,Authorize]
        public ActionResult Edit(int id, Item item)
        {
            try
            {
                // TODO: Add update logic here
                Item it = yikuData.GetItem(id);
                UpdateModel(it);
                yikuData.Save();

                return RedirectToAction("sell", "MyYiku", null);
            }
            catch
            {
                return View();
            }
        }

        [HttpPost, Authorize]
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
