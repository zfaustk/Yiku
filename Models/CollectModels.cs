using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using Yiku.Models.DataBase;


namespace Yiku.Models
{
    public class CollectModels
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return (yikuData.UserCurrent.T_Collection.Count > 0) ? true : false; } }

        public IQueryable<Item> Collections { get { return yikuData.GetCurrentCollections().Skip(skip * 10).Take(10); } }

        public int skip { get; set; }

        public int pageCount { get { if(Exist)return Collections.Count() / 10;else return 0; } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}