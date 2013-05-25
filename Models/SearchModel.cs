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
        }

        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return (Items.Count() > 0) ? true : false; } }

        public IQueryable<Item> Items
        {
            get
            {
                IQueryable<Item> items = yikuData.ItemGetByExist();
                if (!String.IsNullOrEmpty(Uname))
                {
                    items = yikuData.ItemGetBySeller(items, yikuData.GetUser(Uname));
                }
                if (!String.IsNullOrEmpty(strSearch))
                {
                    items = yikuData.ItemSearchByNameAndDetail(items, strSearch);
                }
                if (pMin >0 || pMax >0)
                {
                    if (pMax >0 && pMin >0)
                        items = yikuData.ItemGetByPrice(pMin, pMax);
                    else if (pMax >0)
                        items = yikuData.ItemGetByPrice(0, pMax);
                    else if (pMin >0)
                        items = yikuData.ItemGetByPrice(pMin, 2147483646);
                }
                return items;
            }
        }

        public string   Uname { get; set; }
        public string   strSearch { get; set; }
        public int      pMin { get; set; }
        public int      pMax { get; set; }

        public int skip { get; set; }

        public int pageCount { get { if (Exist)return Items.Count() / 20; else return 0; } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }

    }
}