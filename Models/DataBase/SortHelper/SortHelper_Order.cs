using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public class SortHelper_Order
    {
        public SortHelper_Order(OrderHelper_Order_Enum order)
        {
            orderOrder = order;
        }
        
        private OrderHelper_Order_Enum orderOrder;

        public IQueryable<Order> Sort(IQueryable<Order> orders)
        {
            switch (orderOrder)
            {
                case OrderHelper_Order_Enum.ID:
                    return ByID(orders);
                    break;
                case OrderHelper_Order_Enum.Cost:
                    return ByCost(orders);
                    break;
                case OrderHelper_Order_Enum.State:
                    return ByState(orders);
                    break;
                case OrderHelper_Order_Enum.Count:
                    return ByCount(orders);
                    break;
                case OrderHelper_Order_Enum.Time:
                    return ByTime(orders);
                    break;
                default: return ByID(orders); break;
            }
        }

        private IQueryable<Order> ByID(IQueryable<Order> orders)
        {
            if(orders == null || orders.Count() <= 0 ) return null;
            return from order in orders
                   orderby order.OrID
                   select order;
        }
        private IQueryable<Order> ByCost(IQueryable<Order> orders)
        {
            if (orders == null || orders.Count() <= 0) return null;
            return from order in orders
                   orderby order.Cost
                   select order;
        }
        private IQueryable<Order> ByState(IQueryable<Order> orders)
        {
            if (orders == null || orders.Count() <= 0) return null;
            return from order in orders
                   orderby order.State
                   select order;
        }
        private IQueryable<Order> ByCount(IQueryable<Order> orders)
        {
            if (orders == null || orders.Count() <= 0) return null;
            return from order in orders
                   orderby order.Count
                   select order;
        }
        private IQueryable<Order> ByTime(IQueryable<Order> orders)
        {
            if (orders == null || orders.Count() <= 0) return null;
            return from order in orders
                   orderby order.Time //ascending?
                   select order;
        }
    }

    public enum OrderHelper_Order_Enum
    {
        ID,
        State,
        Count,
        Cost,
        Time
    }
}