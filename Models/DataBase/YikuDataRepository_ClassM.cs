using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Yiku.Models.DataBase
{
    public partial class YikuDataRepository : IYikuDataRepository
    {
        #region Class Get

        public ClassM GetClass(int classID)
        {
            return yikuData.ClassMs.SingleOrDefault(c => c.CID == classID);
        }

        public ClassM GetClass(string className)
        {
            return yikuData.ClassMs.SingleOrDefault(c => c.Name == className);
        }

        public IQueryable<ClassM> GetClasses(Item item)
        {
            return from tcl in yikuData.T_Classify
                   where tcl.IID == item.IID
                   select tcl.Class;
        }

        public IQueryable<ClassM> GetRootClasses()
        {
            return from c in yikuData.ClassMs
                   where (c.FatherID == null || c.FatherID == 1) && c.CID != 1
                   select c;
        }

        #endregion

        #region Class Method Set

        public ClassM ClassCreate(string className, ClassM classFather)
        {
            ClassM classm = new ClassM();
            classm.Name = className;
            classm.FatherID = classFather.CID;
            yikuData.ClassMs.AddObject(classm);
            return classm;
        }

        public ClassM ClassCreate(string className, int classFatherID)
        {
            ClassM classm = new ClassM();
            classm.Name = className;
            classm.FatherID = classFatherID;
            yikuData.ClassMs.AddObject(classm);
            return classm;
        }

        public ClassM ClassCreateAsRoot(string className)
        {
            ClassM classm = new ClassM();
            classm.Name = className;
            classm.FatherID = null;
            yikuData.ClassMs.AddObject(classm);
            return classm;
        }

        #endregion

        #region Class Method Get

        public bool ClassExist(ClassM classm)
        {
            ClassM c = yikuData.ClassMs.SingleOrDefault(cl => cl == classm);
            if (c != null) return true;
            return false;
        }

        public bool ClassRoot(ClassM classm)
        {
            if (classm.FatherID == null || classm.FatherID == 1) return true;
            return false;
        }

        public ClassM ClassGetFather(ClassM classm)
        {
            return yikuData.ClassMs.SingleOrDefault(cl => cl.CID == classm.FatherID);
        }

        public IQueryable<ClassM> ClassGetSons(ClassM classm)
        {
            return from c in yikuData.ClassMs
                   where c.FatherID == classm.CID
                   select c;
        }

        public IQueryable<ClassM> ClassGetByItems(IQueryable<Item> items)
        {
            return (from cly in yikuData.T_Classify
                    where items.Contains(cly.Item)
                    orderby cly.T_Cl_ID
                    select cly.Class
                    ).Distinct();
        }

        #endregion
    }
}