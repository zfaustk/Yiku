using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        //T_Shopping Get
        public T_Shopping GetT_Shopping(int shoppingID)
        {
            return yikuData.T_Shopping.SingleOrDefault(tsh => tsh.T_Sh_ID == shoppingID);
        }

        public T_Shopping GetT_Shopping(Item item, User user)
        {
            return yikuData.T_Shopping.SingleOrDefault(tsh => tsh.IID == item.IID && tsh.UID == user.UID );
        }

        public IQueryable<T_Shopping> GetT_Shopping(Item item)
        {
            return from tsh in yikuData.T_Shopping
                   where tsh.IID == item.IID
                   select tsh;
        }

        public IQueryable<T_Shopping> GetT_Shopping(User user)
        {
            return from tsh in yikuData.T_Shopping
                   where tsh.UID == user.UID
                   select tsh;
        }
        //T_Shopping Set
        public T_Shopping AddShopping(User user, Item item)
        {
            return AddShopping(user, item, 1, null);
        }

        public T_Shopping AddShopping(User user, Item item, int Count, string Cut = null)
        {
            T_Shopping tsh = GetT_Shopping(item, user);
            if (tsh == null)
            {
                tsh = new T_Shopping();
                tsh.UID = user.UID;
                tsh.IID = item.IID;
                tsh.Count = Count;
                tsh.Cut = Cut;
                Add(tsh);
            }
            else
            {
                tsh.Count += Count;
                if (Cut != null)
                    tsh.Cut = Cut;
            }
            return tsh;
        }

        public void DeleteShopping(User user, Item item)
        {
            T_Shopping tsh = GetT_Shopping(item, user);
            if (tsh != null)
                Delete(tsh);
        }

        public T_Shopping DeleteShopping(User user, Item item, int count)
        {
            T_Shopping tsh = GetT_Shopping(item, user);
            if (tsh != null)
            {
                if (tsh.Count <= count) Delete(tsh);
                else
                {
                    tsh.Count -= count;
                    return tsh;
                }
            }
            return null;

        }

    }
}