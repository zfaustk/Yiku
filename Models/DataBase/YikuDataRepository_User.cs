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
        public User GetUser(string userName);
        public User GetUser(Item item);//publisher

        #endregion

        #region User Method Set

        public User UserCreate(string name, string psw, string address, string consignee, string tel, string zipcode);

        #endregion

        #region User Method Get

        public bool UserExist(User user);
        public IQueryable<User> UsersGetByRandom(int Num);
        public IQueryable<User> UsersGetByClass(int Num);
        public IQueryable<User> UsersGetByItems(IQueryable<User> items);

        #endregion

        #region User Method Get <itorate>

        public IQueryable<User> UsersGetByRandom(IQueryable<User> users, int Num);
        public IQueryable<User> UsersGetByClass(IQueryable<User> users, int Num);
        public IQueryable<User> UsersGetByItems(IQueryable<User> users, IQueryable<User> items);

        #endregion

    }
}