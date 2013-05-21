using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Yiku.Models.DataBase;

namespace Yiku.Methods
{
    public class UserLogAttribute : AuthorizeAttribute
    {
        YikuDataRepository yikuData = new YikuDataRepository();

        // 只需重载此方法，模拟自定义的角色授权机制  
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            if (!CurrentUser.IsAuthenticated) return false;


            if (Roles.Contains(CurrentUser.UserCurrent.ROLE))
            {
                if (Roles.Contains("UnLog"))//角色包含UnLog则在未登录时授权
                    return false;
                else
                    return true;
            }

            return base.AuthorizeCore(httpContext);
        }

    }
}