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

        public Item BuyRecently { get { 
            IQueryable<Item> orders =(from order in yikuData.OrderGetBySeller(CurrentUser)
                                        orderby order.Time
                                      select order.Item);
            if (orders != null && orders.Any()) return orders.First();
            else return null;
        } }

        public IQueryable<Item> MostBuy0
        {
            get
            {
                IQueryable<Item> items = yikuData.ItemSort(yikuData.GetItems(),new SortHelper_Item(OrderHelper_Item_Enum.Volume));
                if (items != null && items.Any()) return items.Skip(8).Take(8);
                else return null;
            }
        }

        public IQueryable<Item> MostBuy8
        {
            get
            {
                IQueryable<Item> items = yikuData.ItemSort(yikuData.GetItems(), new SortHelper_Item(OrderHelper_Item_Enum.Volume));
                if (items != null && items.Any()) return items.Take(8);
                else return null;
            }
        }

        public IQueryable<Item> NewPost0
        {
            get
            {
                IQueryable<Item> items = yikuData.ItemSort(yikuData.GetItems(), new SortHelper_Item(OrderHelper_Item_Enum.Time));
                if (items != null && items.Any()) return items.Take(8);
                else return null;
            }
        }

        public IQueryable<Item> NewPost8
        {
            get
            {
                IQueryable<Item> items = yikuData.ItemSort(yikuData.GetItems(), new SortHelper_Item(OrderHelper_Item_Enum.Time));
                if (items != null && items.Any()) return items.Skip(8).Take(8);
                else return null;
            }
        }

        public IQueryable<User> FavorateUsers
        {
            get
            {
                IQueryable<User> users = yikuData.GetUsers();
                if (users != null && users.Any()) return users.Take(7);
                else return null;
            }
        }

        //public User publisher { get { return yikuData.GetUser(item) ;} }

        //public IQueryable<Item> HomePageItems { get; set; }

        //public IQueryable<string> pictures { get { return from i in HomePageItems select i.thePictureRoute; } }

        public User CurrentUser { get { return yikuData.UserCurrent; } }
    }
}