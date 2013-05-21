using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        //T_Collection Get
        public T_Collection GetT_Collection(int collectionID)
        {
            return yikuData.T_Collection.SingleOrDefault(tco => tco.T_Co_ID == collectionID );
        }

        public T_Collection GetT_Collection(Item item, User user)
        {
            return yikuData.T_Collection.SingleOrDefault(tco => tco.IID == item.IID && tco.UID == user.UID );
        }

        public IQueryable<T_Collection> GetT_Collections(Item item)
        {
            return from tco in yikuData.T_Collection
                   where tco.IID == item.IID
                   select tco;
        }
        public IQueryable<T_Collection> GetT_Collections(User user)
        {
            return from tco in yikuData.T_Collection
                   where tco.UID == user.UID
                   select tco;
        }
        //T_Collection Set
        public T_Collection AddCollection(User user, Item item)
        {
            T_Collection tco = GetT_Collection(item, user);
            if (tco == null) tco = new T_Collection();
            else return tco;

            tco.UID = user.UID;
            tco.IID = item.IID;
            Add(tco);
            return tco;
        }
        public void DeleteCollection(User user, Item item)
        {
            T_Collection tco = GetT_Collection(item, user);
            if( tco != null)
                Delete(tco);
        }

    }
}