using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Yiku.Models.DataBase;

namespace Yiku.Models
{
    public class SellModel
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return ( Items.Count() > 0) ? true : false; } }

        public IQueryable<Item> Items { 
            get 
            { 
                return yikuData.ItemGetByExist(
                            yikuData.ItemGetBySeller(yikuData.UserCurrent)
                            ,true)
                            .Skip(skip * 10)
                            .Take(10); 
            } 
        }

        public int skip { get; set; }

        public int pageCount { get { if (Exist)return Items.Count() / 10; else return 0; } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}