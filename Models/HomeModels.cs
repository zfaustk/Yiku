using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using Yiku.Models.DataBase;


namespace Yiku.Models
{
    public class HomeModels
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public IQueryable<ClassM> rootClasses
        {
            get { return yikuData.GetRootClasses(); }
        }

        public IQueryable<ClassM> sonClasses(ClassM classm)
        {
            return yikuData.ClassGetSons(classm);
        }

        //public User publisher { get { return yikuData.GetUser(item) ;} }

        //public IQueryable<Item> HomePageItems { get; set; }

        //public IQueryable<string> pictures { get { return from i in HomePageItems select i.thePictureRoute; } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}