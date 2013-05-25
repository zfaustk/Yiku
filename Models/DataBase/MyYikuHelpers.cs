using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        public IQueryable<Item> GetCurrentCollections()
        {
            if (UserCurrent != null)
                return from tcl in GetT_Collections(UserCurrent)
                       orderby tcl.T_Co_ID
                       select tcl.Item;
            return null;
        }
    }
}