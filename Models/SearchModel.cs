using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Yiku.Models.DataBase;

namespace Yiku.Models
{
    public class SearchModel
    {
        public SearchModel()
        {
            pMax = -1;
            pMin = -1;
            pageNumber = 20;
            skip = 0;
        }

        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get {
            if (items == null)
                return false;
            else
                return true;
        } }

        public int pageCount
        {
            get
            {
                if (pageNumber <= 0) pageNumber = 20;
                if (Exist)
                    return (items.Count() / pageNumber) + 1;
                else return 0;
            }
        }

        public IQueryable<Item> items
        {
            get
            {
                IQueryable<Item> it = yikuData.ItemGetByExist();
                if (!String.IsNullOrEmpty(Uname))
                {
                    it = yikuData.ItemGetBySeller(it, yikuData.GetUser(Uname));
                }
                if (!String.IsNullOrEmpty(strSearch))
                {
                    it = yikuData.ItemSearchByNameAndDetail(it, strSearch);
                }
                if (!String.IsNullOrEmpty(Cname))
                {
                    it = yikuData.ItemGetByClass(it, yikuData.GetClass(Cname));
                }
                if (pMin > 0 || pMax > 0)
                {
                    if (pMax > 0 && pMin > 0)
                        it = yikuData.ItemGetByPrice(it, pMin, pMax);
                    else if (pMax > 0)
                        it = yikuData.ItemGetByPrice(it, 0, pMax);
                    else if (pMin > 0)
                        it = yikuData.ItemGetByPrice(it, pMin, 2147483646);
                }
                return it;
            }
        }

        public IQueryable<Item> Items
        {
            get{
                if (skip >= pageCount) skip = pageCount - 1;
                if (skip < 0) skip = 0;
                return items.Skip(skip * pageNumber).Take(pageNumber);
            }
        }

        public int ItemsCount
        {
            get { return items.Count(); }
        }


        public bool ClassesExist
        {
            get { return (Exist && Classes != null && Classes.Count() > 0) ? true : false; }
        }
        

        public IQueryable<ClassM> Classes
        {
            get { return yikuData.ClassGetByItems(items); }
        }

        public string   Uname { get; set; }
        public string   strSearch { get; set; }
        public string   Cname { get; set; }
        public int      pMin { get; set; }
        public int      pMax { get; set; }

        public int skip { get { return ski; }
            set 
            {
                if (value < 0) ski = 0;
                else if (value >= pageCount) ski = pageCount - 1;
                else ski = value;
            }
        }
        private int ski = 0;
        public int pageNumber { get; set; }

        

        public User CurrentUser { get { return yikuData.UserCurrent; } }

    }
}