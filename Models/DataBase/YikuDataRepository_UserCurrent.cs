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

        public string UserCreateErrorCodeToString(UserCreateStatus result)
        {
            switch (result)
            {
                case UserCreateStatus.Succeed: return "注册成功";
                case UserCreateStatus.Faild: return "注册失败";
                case UserCreateStatus.AlreadyExist: return "该用户已经存在";
                case UserCreateStatus.ComfirmError: return "密码输入有误";
                default: return "未知错误";
            }
        }

    }

    public enum UserCreateStatus { Succeed, AlreadyExist, ComfirmError, Faild }

    
}