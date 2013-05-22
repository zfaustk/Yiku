using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Yiku.Models.DataBase;

namespace Yiku.Methods
{
    public class CurrentUser
    {
        static YikuDataRepository yikuData = new YikuDataRepository();

        public static User UserCurrent
        {
            get { return yikuData.GetUser(HttpContext.Current.User.Identity.Name); }
        }

        public static bool IsAuthenticated
        {
            get { return HttpContext.Current.User.Identity.IsAuthenticated; }
        }

        public static bool UserIsCurrent(User user)
        {
            return UserCurrent.UID == user.UID;
        }

    }
    
}