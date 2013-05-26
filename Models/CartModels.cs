using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using Yiku.Models.DataBase;


namespace Yiku.Models
{
    public class CartModels
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return TSHs.Any(); } }

        public IQueryable<T_Shopping> TSHs { get { return yikuData.GetT_Shopping(CurrentUser); } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}