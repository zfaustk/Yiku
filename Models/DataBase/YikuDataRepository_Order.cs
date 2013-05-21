using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {

        #region Order Get

        public Order GetOrder(int orderID)
        {
            return yikuData.Orders.SingleOrDefault(o => o.OrID == orderID);
        }

        public IQueryable<Order> GetOrders(Item item)
        {
            return from ord in yikuData.Orders
                   where ord.IID == item.IID
                   select ord;
        }
        public IQueryable<Order> GetOrders(User buyer)
        {
            return OrderGetByBuyer(buyer);
        }

        #endregion

        #region Order Method Set

        public Order OrderCreate(User user, Item item, string Cut, int count = 1)
        {
            Order order = new Order();
            order.UID = user.UID;
            order.IID = item.IID;
            order.Count = count;
            order.Cut = Cut;
            order.Time = DateTime.Now;
            order.Cost = item.Price * count;
            order.State = "buy";
            Add(order);

            return order;
        }

        #endregion

        #region Order Method Get

        public bool OrderExist(Order order)
        {
            if (yikuData.Orders.SingleOrDefault(o => o == order) != null)
                return true;
            return false;
        }
        public IQueryable<Order> OrderGetByTime(DateTime timeBegin, DateTime timeEnd)
        {
            return OrderGetByTime(yikuData.Orders, timeBegin, timeEnd);
        }
        public IQueryable<Order> OrderGetByCost(decimal priceMin, decimal priceMax)
        {
            return OrderGetByCost(yikuData.Orders, priceMin, priceMax);
        }
        public IQueryable<Order> OrderGetByState(string state)
        {
            return OrderGetByState(yikuData.Orders, state);
        }
        public IQueryable<Order> OrderGetByBuyer(User buyer)
        {
            return OrderGetByBuyer(yikuData.Orders, buyer);
        }
        public IQueryable<Order> OrderGetBySeller(User buyer)
        {
            return OrderGetBySeller(yikuData.Orders, buyer);
        }

        #endregion

        #region Order Method Get <itorate>

        public IQueryable<Order> OrderGetByTime(IQueryable<Order> orders, DateTime timeBegin, DateTime timeEnd)
        {
            return from order in orders
                   where order.Time <= timeEnd && order.Time >= timeBegin
                   select order;
        }

        public IQueryable<Order> OrderGetByCost(IQueryable<Order> orders, decimal priceMin, decimal priceMax)
        {
            return from order in orders
                   where order.Cost <= priceMax && order.Cost >= priceMin
                   select order;
        }

        public IQueryable<Order> OrderGetByState(IQueryable<Order> orders, string state)
        {
            return from order in orders
                   where order.State == state
                   select order;
        }

        public IQueryable<Order> OrderGetByBuyer(IQueryable<Order> orders, User buyer)
        {
            return from order in orders
                   where order.UID == buyer.UID
                   select order;
        }

        public IQueryable<Order> OrderGetBySeller(IQueryable<Order> orders, User seller)
        {
            return from order in orders
                   where order.Item.PublisherID == seller.UID
                   select order;
        }

        public IQueryable<Order> ItemOrder(IQueryable<Order> orders, SortHelper_Order sortHelper)
        {
            return sortHelper.Sort(orders);
        }

        #endregion
    }
}