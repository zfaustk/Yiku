using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using Yiku.Models.DataBase;


namespace Yiku.Models
{
    public class ItemModels
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return yikuData.ItemExist(item); } }

        public Item item { get; set; }

        public User publisher { get { return yikuData.GetUser(item) ;} }

        public IQueryable<Picture> pictures { get { return yikuData.GetPictures(item); } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}