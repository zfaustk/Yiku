using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        public T_Classify GetT_Classify(int classifyID)
        {
            return yikuData.T_Classify.SingleOrDefault(tcl => tcl.T_Cl_ID == classifyID);
        }

        public T_Classify GetT_Classify(Item item, ClassM classm)
        {
            return yikuData.T_Classify.SingleOrDefault(tcl => tcl.IID == item.IID && tcl.CID == classm.CID);
        }

        public IQueryable<T_Classify> GetT_Classifys(Item item)
        {
            return from tcl in yikuData.T_Classify
                   where tcl.IID == item.IID
                   select tcl    ;
        }

        public IQueryable<T_Classify> GetT_Classifys(ClassM classm)
        {
            return from tcl in yikuData.T_Classify
                   where tcl.CID == classm.CID
                   select tcl;
        }

        public T_Classify AddClassify(Item item, ClassM classm)
        {
            T_Classify tcl = GetT_Classify(item, classm);
            if (tcl == null) tcl = new T_Classify();
            else return tcl;

            tcl.CID = classm.CID;
            tcl.IID = item.IID;
            Add(tcl);
            return tcl;
        }

        public void DeleteClassify(Item item, ClassM classm)
        {
            T_Classify tcl = GetT_Classify(item, classm);
            if (tcl != null)
                Delete(tcl);

        }

    }
}