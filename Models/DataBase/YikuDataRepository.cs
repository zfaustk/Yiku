using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        //General method

        YikuDataEntities yikuData = new YikuDataEntities();

        #region Save

        public void Save()
        {
            yikuData.SaveChanges();
        }

        #endregion

        #region Add

        public void Add(ClassM classm)
        {
            yikuData.ClassMs.AddObject(classm);
        }
        public void Add(Item item)
        {
            yikuData.Items.AddObject(item);
        }
        public void Add(Order order)
        {
            yikuData.Orders.AddObject(order);
        }
        public void Add(Picture picture)
        {
            yikuData.Pictures.AddObject(picture);
        }
        public void Add(User user)
        {
            yikuData.Users.AddObject(user);
        }
        public void Add(T_Classify tcl)
        {
            yikuData.T_Classify.AddObject(tcl);
        }
        public void Add(T_Collection tco)
        {
            yikuData.T_Collection.AddObject(tco);
        }
        public void Add(T_Shopping tsh)
        {
            yikuData.T_Shopping.AddObject(tsh);
        }

        #endregion


        //Item和User在操作时应使用对应的Unable方法 ， 而不是直接delete
        #region Delete 

        public void Delete(ClassM classm)
        {
            IQueryable<ClassM> sons = ClassGetSons(classm);
            foreach (ClassM son in sons)
            {
                if (classm.FatherID != null)
                    son.FatherID = classm.FatherID;
                else
                    son.FatherID = null;
            }

            IQueryable<T_Classify> tcls = GetT_Classifys(classm);
            foreach (T_Classify tcl in tcls)
            {
                if (classm.FatherID != null)
                    tcl.CID = classm.FatherID.Value;
                else
                    tcl.CID = 1;
            }

            yikuData.DeleteObject(classm);

        }

        public void Delete(Item item)
        {
            foreach (Picture p in item.Pictures)
            {
                yikuData.Pictures.DeleteObject(p);
            }

            foreach (T_Classify tcl in item.T_Classify)
            {
                yikuData.T_Classify.DeleteObject(tcl);
            }

            foreach (T_Collection tco in item.T_Collection)
            {
                yikuData.T_Collection.DeleteObject(tco);
            }

            foreach (T_Shopping tsh in item.T_Shopping)
            {
                yikuData.T_Shopping.DeleteObject(tsh);
            }

            foreach (Order order in item.Orders)
            {
                yikuData.Orders.DeleteObject(order);
            }

            yikuData.Items.DeleteObject(item);

        }

        public void Delete(Order order)
        {
            yikuData.Orders.DeleteObject(order);
        }

        public void Delete(Picture picture)
        {
            yikuData.Pictures.DeleteObject(picture);
        }

        public void Delete(User user)
        {
            foreach (Order order in user.Orders)
            {
                yikuData.Orders.DeleteObject(order);
            }

            foreach (T_Collection tco in user.T_Collection)
            {
                yikuData.T_Collection.DeleteObject(tco);
            }

            foreach (T_Shopping tsh in user.T_Shopping)
            {
                yikuData.T_Shopping.DeleteObject(tsh);
            }

            yikuData.Users.DeleteObject(user);

        }

        public void Delete(T_Classify tcl)
        {
            yikuData.T_Classify.DeleteObject(tcl);
        }
        public void Delete(T_Collection tco)
        {
            yikuData.T_Collection.DeleteObject(tco);
        }
        public void Delete(T_Shopping tsh)
        {
            yikuData.T_Shopping.DeleteObject(tsh);
        }

        #endregion
    }
}