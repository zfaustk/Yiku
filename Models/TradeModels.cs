﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using Yiku.Models.DataBase;


namespace Yiku.Models
{
    public class TradeModels
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        public bool Exist { get { return Orders.Any(); } }

        public IQueryable<Order> Orders { get { return yikuData.OrderGetByBuyer(CurrentUser); } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}