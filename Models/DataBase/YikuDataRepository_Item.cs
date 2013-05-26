using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {

        #region item Get

        public Item GetItem(int itemID)
        {
            return yikuData.Items.SingleOrDefault(i => i.IID == itemID);
        }

        public Item GetItem(Picture picture)
        {
            return yikuData.Items.SingleOrDefault(i => picture.IID == i.IID);
        }

        public IQueryable<Item> GetItems(string itemName)
        {
            return from i in yikuData.Items
                   where i.Name.ToLower().Contains(itemName.Trim().ToLower())
                   select i;
        }
        public IQueryable<Item> GetItems(User user)//publisher
        {
            return from i in yikuData.Items
                   where i.PublisherID == user.UID
                   select i;
        }
        public IQueryable<Item> GetItems(ClassM classm)
        {
            return from tcl in yikuData.T_Classify
                   where tcl.CID == classm.CID
                   select tcl.Item;
        }

        #endregion

        #region item Method Set

        public Item ItemCreate(User publisher, string name, string detail, int stock, decimal price, string cutType)
        {
            Item item = new Item();
            item.PublisherID = publisher.UID;
            item.Name = name;
            item.Detail = detail;
            item.Stock = stock;
            item.Volume = 0;
            item.Price = price;
            item.TimeCreate = DateTime.Now;
            item.Cut = cutType;
            item.Exist = true;
            Add(item);

            return item;
        }

        public Item ItemUnable(Item item)
        {
            item.Exist = false;
            return item;
        }

        #endregion

        #region item Method Get

        public bool ItemExist(Item item)
        {
            if (item != null && item.Exist) return true;
            else return false;
        }

        public IQueryable<Item> ItemGetByExist(bool exist = true)
        {
            return ItemGetByExist(yikuData.Items, exist);
        }

        public IQueryable<Item> ItemGetRelateds(Item item)
        {
            return ItemGetRelateds(yikuData.Items, item);
        }

        public IQueryable<Item> ItemGetByTime(DateTime timeBegin, DateTime timeEnd)
        {
            return ItemGetByTime(yikuData.Items, timeBegin, timeEnd);
        }

        public IQueryable<Item> ItemGetByPrice(decimal priceMin, decimal priceMax)
        {
            return ItemGetByPrice(yikuData.Items,  priceMin, priceMax);
        }

        public IQueryable<Item> ItemGetByVolume(int volumeMin, int volumeMax)
        {
            return ItemGetByVolume(yikuData.Items, volumeMin, volumeMax);
        }

        public IQueryable<Item> ItemGetByStock(int stockMin, int stockMax)
        {
            return ItemGetByStock(yikuData.Items, stockMin, stockMax);
        }

        public IQueryable<Item> ItemGetByBuyer(User buyer)
        {
            return ItemGetByBuyer(yikuData.Items, buyer);
        }

        public IQueryable<Item> ItemGetBySeller(User seller)
        {
            return ItemGetBySeller(yikuData.Items, seller);
        }

        public IQueryable<Item> ItemGetByClass(ClassM classm)
        {
            return ItemGetByClass(yikuData.Items, classm);
        }

        //--item Method Search
        public IQueryable<Item> ItemSearchByNameAndDetail(string searchString)
        {
            return ItemSearchByNameAndDetail(yikuData.Items, searchString);
        }

        #endregion

        #region item Method Get <itorate>

        public IQueryable<Item> ItemGetRelateds(IQueryable<Item> items, Item item)
        {
            //TODO : CHANGE THIS 
            return from i in items
                   where i.Name.ToLower().Contains(item.Name.ToLower())
                        || item.Name.ToLower().Contains(i.Name.ToLower())
                   orderby i.IID
                   select i;
        }
        public IQueryable<Item> ItemGetByTime(IQueryable<Item> items, DateTime timeBegin, DateTime timeEnd)
        {
            return from i in items
                   where i.TimeCreate >= timeBegin && i.TimeCreate <= timeEnd
                   orderby i.IID
                   select i;
        }

        public IQueryable<Item> ItemGetByPrice(IQueryable<Item> items, decimal priceMin, decimal priceMax)
        {
            return from i in items
                   where i.Price >= priceMin && i.Price <= priceMax
                   orderby i.IID
                   select i;
        }

        public IQueryable<Item> ItemGetByVolume(IQueryable<Item> items, int volumeMin, int volumeMax)
        {
            return from i in items
                   where i.Volume >= volumeMin && i.Volume <= volumeMax
                   orderby i.IID
                   select i;
        }

        public IQueryable<Item> ItemGetByStock(IQueryable<Item> items, int stockMin, int stockMax)
        {
            return from i in items
                   where i.Stock >= stockMin && i.Stock <= stockMax
                   orderby i.IID
                   select i;
        }

        public IQueryable<Item> ItemGetByBuyer(IQueryable<Item> items, User buyer)
        {
            return from ord in yikuData.Orders
                        where ord.UID == buyer.UID && items.Contains(ord.Item)
                        orderby ord.OrID   
                        select ord.Item;

        }

        public IQueryable<Item> ItemGetBySeller(IQueryable<Item> items, User seller)
        {
            return from i in items
                   where i.PublisherID == seller.UID
                   orderby i.IID
                   select i;
        }

        public IQueryable<Item> ItemGetByClass(IQueryable<Item> items, ClassM classm)
        {
            return from cly in yikuData.T_Classify
                    where items.Contains(cly.Item) && cly.CID == classm.CID
                    orderby cly.IID
                    select cly.Item;
        }

        public IQueryable<Item> ItemGetByExist(IQueryable<Item> items, bool exist = true)
        {
            return from i in items
                   where i.Exist == exist
                   orderby i.IID
                   select i;
        }
        //--item Method Search
        public IQueryable<Item> ItemSearchByNameAndDetail(IQueryable<Item> items, string searchString)
        {
            return from i in items
                   where i.Detail.ToLower().Contains(searchString.ToLower().Trim())
                        || i.Name.ToLower().Contains(searchString.ToLower().Trim())
                        || i.User.Name.ToLower().Contains(searchString.ToLower().Trim())
                   orderby i.IID
                   select i;
        }


        #endregion

        #region item Method Sort

        public IQueryable<Item> ItemSort(IQueryable<Item> items, SortHelper_Item sortHelper)
        {
            return sortHelper.Sort(items);
        }

        #endregion
    }
}