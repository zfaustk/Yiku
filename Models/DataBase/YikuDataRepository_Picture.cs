using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        #region Picture Get

        public Picture GetPicture(int pictureID)
        {
            return yikuData.Pictures.SingleOrDefault(p => p.PID == pictureID);
        }

        public IQueryable<Picture> GetPictures(Item item)
        {
            return from p in yikuData.Pictures
                   where p.IID == item.IID
                   select p;
        }

        #endregion

        #region Picture Method Set

        public Picture PictureCreate(Item item, string route)
        {
            Picture picture = new Picture();
            picture.IID = item.IID;
            picture.Route = route;
            Add(picture);

            return picture;
        }

        #endregion

        #region Picture Method Get

        public bool PictureExist(Picture picture)
        {
            if (yikuData.Pictures.SingleOrDefault(p => p == picture) == null)
                return true;
            return false;
        }

        #endregion

    }
}