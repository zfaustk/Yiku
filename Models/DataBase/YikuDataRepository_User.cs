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

        public IQueryable<User> GetUsers()//All
        {
            return from user in yikuData.Users
                   orderby user.Items.Count descending 
                   select user;
        }

        #endregion

        #region User Method Set

        public UserCreateStatus UserCreate(string name, string password, string address, string consignee, string tel, string zipcode, bool overwrite = false)
        {
            try
            {
                User user = GetUser(name);
                if (user != null)
                {
                    if (!overwrite) return UserCreateStatus.AlreadyExist;
                    if (password != null) user.PSW = password;
                    if (address != null) user.Address = address;
                    if (consignee != null) user.Consignee = consignee;
                    if (tel != null) user.Tel = tel;
                    if (zipcode != null) user.ZipCode = zipcode;
                }
                else
                {
                    user = new User();
                    user.PSW = password;
                    user.Name = name;
                    user.Address = address;
                    user.Consignee = consignee;
                    user.Tel = tel;
                    user.ZipCode = zipcode;
                    user.ROLE = "User";
                    user.Exist = true;
                    Add(user);
                }
                return UserCreateStatus.Succeed;
            }
            catch{
                return UserCreateStatus.Faild;
            }
        }

        public bool UserChangePassword(User user, string pswOld, string pswNew)
        {
            if (UserExist(user) && user.PSW.Trim() == pswOld)
            {
                user.PSW = pswNew;
                return true;
            }
            return false;
        }

        #endregion

        #region User Method Get

        public bool UserExist(User user)
        {
            if(user != null)
                return user.Exist;
            return false;
        }

        public bool ValidateUser(string userName, string password)
        {
            User user = GetUser(userName);
            if( UserExist(user) )
                return user.PSW.Trim() == password;
            return false;
        }

        public IQueryable<User> UsersGetByItems(IQueryable<Item> items)
        {
            return UsersGetByItems(yikuData.Users, items);
        }

        public IQueryable<User> UsersGetByRole(string role)
        {
            return UsersGetByRole(yikuData.Users, role);
        }

        #endregion

        #region User Method Get <itorate>

        public IQueryable<User> UsersGetByItems(IQueryable<User> users, IQueryable<Item> items)
        {
            return from ord in yikuData.Orders
                   where items.Contains(ord.Item) && yikuData.Users.Contains(ord.User)
                   select ord.User;
        }

        public IQueryable<User> UsersGetByRole(IQueryable<User> users, string role)
        {
            return from user in users
                   where user.ROLE.Trim() == role
                   select user;
        }

        #endregion

    }
}