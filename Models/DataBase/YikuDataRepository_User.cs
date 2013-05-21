using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        #region User Get

        public User GetUser(int userID)
        {
            return yikuData.Users.SingleOrDefault(u => u.UID == userID);
        }
        public User GetUser(string userName)
        {
            return yikuData.Users.SingleOrDefault(u => u.Name == userName);
        }
        public User GetUser(Item item)//publisher
        {
            return yikuData.Users.SingleOrDefault(u => u.UID == item.IID);
        }

        #endregion

        #region User Method Set

        public User UserCreate(string name, string address, string consignee, string tel, string zipcode, bool overwrite = false)
        {
            User user = GetUser(name);
            if (user != null)
            {
                if (!overwrite) return user;
                user.Address = address;
                user.Consignee = consignee;
                user.Tel = tel;
                user.ZipCode = zipcode;
                user.Exist = true;
            }
            else
            {
                user = new User();
                user.Name = name;
                user.Address = address;
                user.Consignee = consignee;
                user.Tel = tel;
                user.ZipCode = zipcode;
                user.Exist = true;
                Add(user);
            }
            return user;
        }

        #endregion

        #region User Method Get

        public bool UserExist(User user)
        {
            return user.Exist;
        }

        public IQueryable<User> UsersGetByItems(IQueryable<Item> items)
        {
            return UsersGetByItems(yikuData.Users, items);
        }
        
        #endregion

        #region User Method Get <itorate>

        public IQueryable<User> UsersGetByItems(IQueryable<User> users, IQueryable<Item> items)
        {
            return from ord in yikuData.Orders
                   where items.Contains(ord.Item) && yikuData.Users.Contains(ord.User)
                   select ord.User;
        }

        #endregion

    }
}