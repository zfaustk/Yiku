using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public class SortHelper_Item
    {
        public SortHelper_Item(OrderHelper_Item_Enum order)
        {
            itemOrder = order;
        }
        
        private OrderHelper_Item_Enum itemOrder;

        public IQueryable<Item> Sort(IQueryable<Item> items)
        {
            switch (itemOrder)
            {
                case OrderHelper_Item_Enum.ID:
                    return ByID(items);

                case OrderHelper_Item_Enum.Price:
                    return ByPrice(items);

                case OrderHelper_Item_Enum.Publisher:
                    return ByPublisher(items);

                case OrderHelper_Item_Enum.Stock:
                    return ByStock(items);

                case OrderHelper_Item_Enum.Time:
                    return ByTime(items);

                case OrderHelper_Item_Enum.Volume:
                    return ByVolume(items);

                default: return ByID(items); 
            }
        }

        private IQueryable<Item> ByID(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.IID
                   select item;
        }
        private IQueryable<Item> ByPrice(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.Price
                   select item;
        }
        private IQueryable<Item> ByPublisher(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.PublisherID
                   select item;
        }
        private IQueryable<Item> ByStock(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.Stock
                   select item;
        }
        private IQueryable<Item> ByTime(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.TimeCreate
                   select item;
        }
        private IQueryable<Item> ByVolume(IQueryable<Item> items)
        {
            if (items == null || items.Count() <= 0) return null;
            return from item in items
                   orderby item.Volume descending 
                   select item;
        }
    }

    public enum OrderHelper_Item_Enum{
        ID,
        Publisher,
        Stock,
        Volume,
        Price,
        Time
    }
}