using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Yiku.Models.DataBase;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository
    {
        public User UserCurrent
        {
            get { return GetUser(HttpContext.Current.User.Identity.Name); }
        }

        public bool UserIsCurrent(User user)
        {
            return UserCurrent.UID == user.UID;
        }

        public string UserCreateErrorCodeToString(UserCreateStatus result)
        {
            switch (result) {
                case UserCreateStatus.Succeed: return "Succeed";
                case UserCreateStatus.Faild: return "Faild";
                case UserCreateStatus.AlreadyExist: return "AlreadyExist";
                default: return "Unknow";
            }
        }

    }

    public enum UserCreateStatus { Succeed, AlreadyExist, Faild }
    
}