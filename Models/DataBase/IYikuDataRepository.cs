using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Yiku.Models.DataBase
{
    public interface IYikuDataRepository
    {
        //排序功能还都没设计

        #region General method

        //Save
            void Save();

        //Add
            void Add(ClassM classm);
            void Add(Item item);
            void Add(Order order);
            void Add(Picture picture);
            void Add(User user);
            void Add(T_Classify tcl);
            void Add(T_Collection tco);
            void Add(T_Shopping tsh);

        ////Edit
        // ClassM   Edit(ClassM classm);
        // Item     Edit(Item item);
        // Order    Edit(Order order);
        // Picture  Edit(Picture Picture);
        // User     Edit(User user);
        
        //Delete

            void Delete(ClassM classm);
            void Delete(Item item);
            void Delete(Order order);
            void Delete(Picture picture);
            void Delete(User user);
            void Delete(T_Classify tcl);
            void Delete(T_Collection tco);
            void Delete(T_Shopping tsh);
         

        #endregion

        #region Class Method

        //Class Get
            ClassM GetClass(int classID);
            ClassM GetClass(string className);
            IQueryable<ClassM> GetClasses(Item item);
            IQueryable<ClassM> GetRootClasses();
        //Class Method Set
            ClassM ClassCreate(string className, ClassM classFather);
            ClassM ClassCreate(string className, int classFatherID);
            ClassM ClassCreateAsRoot(string className);
        //Class Method Get
            bool ClassExist(ClassM classm);
            ClassM ClassGetFather(ClassM classm);
            IQueryable<ClassM> ClassGetSons(ClassM classm);

        #endregion

        #region Item Method

        //item Get
            Item GetItem(int itemID);
            Item GetItem(Picture picture);
            IQueryable<Item> GetItems(string itemName);
            IQueryable<Item> GetItems(User user);//publisher
            IQueryable<Item> GetItems(ClassM classm);
        //item Method Set
            Item ItemCreate(User publisher, string name, string detail, int stock, decimal price, string cutType);
            Item ItemUnable(Item item);
        //item Method Get
            bool ClassExist(Item item);
            IQueryable<Item> ItemGetRelateds(Item item);
            IQueryable<Item> ItemGetByTime(DateTime timeBegin, DateTime timeEnd);
            IQueryable<Item> ItemGetByPrice(decimal priceMin, decimal priceMax);
            IQueryable<Item> ItemGetByVolume(int volumeMin, int volumeMax);
            IQueryable<Item> ItemGetByStock(int stockMin, int stockMax);
            IQueryable<Item> ItemGetByBuyer(User buyer);
            IQueryable<Item> ItemGetBySeller(User seller);
            //--item Method Search
            IQueryable<Item> ItemSearchByNameAndDetail(string searchString);
        //item Method Get <itorate>
            IQueryable<Item> ItemGetRelateds(IQueryable<Item> items, Item item);
            IQueryable<Item> ItemGetByTime(IQueryable<Item> items, DateTime timeBegin, DateTime timeEnd);
            IQueryable<Item> ItemGetByPrice(IQueryable<Item> items, decimal priceMin, decimal priceMax);
            IQueryable<Item> ItemGetByVolume(IQueryable<Item> items, int volumeMin, int volumeMax);
            IQueryable<Item> ItemGetByStock(IQueryable<Item> items, int stockMin, int stockMax);
            IQueryable<Item> ItemGetByBuyer(IQueryable<Item> items, User buyer);
            IQueryable<Item> ItemGetBySeller(IQueryable<Item> items, User seller);
            //--item Method Search <itorate>
            IQueryable<Item> ItemSearchByNameAndDetail(IQueryable<Item> items, string searchString);
        //item Method Sort
            IQueryable<Item> ItemSort(IQueryable<Item> items, SortHelper_Item sortHelper);
        
        #endregion

        #region Order Method

        //Order Get
            Order GetOrder(int orderID);
            IQueryable<Order> GetOrders(Item item);
            IQueryable<Order> GetOrders(User buyer);
        //Order Method Set
            Order OrderCreate(User user, Item item, string Cut, int count = 1);
        //Order Method Get
            bool OrderExist(Order order);
            IQueryable<Order> OrderGetByTime(DateTime timeBegin, DateTime timeEnd);
            IQueryable<Order> OrderGetByCost(decimal priceMin, decimal priceMax);
            IQueryable<Order> OrderGetByState(string state);
            IQueryable<Order> OrderGetByBuyer(User buyer);
            IQueryable<Order> OrderGetBySeller(User seller);
        //Order Method Get <itorate>
            IQueryable<Order> OrderGetByTime(IQueryable<Order> orders, DateTime timeBegin, DateTime timeEnd);
            IQueryable<Order> OrderGetByCost(IQueryable<Order> orders, decimal priceMin, decimal priceMax);
            IQueryable<Order> OrderGetByState(IQueryable<Order> orders, string state);
            IQueryable<Order> OrderGetByBuyer(IQueryable<Order> orders, User buyer);
            IQueryable<Order> OrderGetBySeller(IQueryable<Order> orders, User seller);
            IQueryable<Order> ItemOrder(IQueryable<Order> orders, SortHelper_Order sortHelper);

        #endregion

        #region Picture Method

        //Picture Get
            Picture GetPicture(int pictureID);
            IQueryable<Picture> GetPictures(Item item);
        //Picture Method Set
            Picture PictureCreate(Item item, string route);
        //Picture Method Get
            bool PictureExist(Picture picture);
        
        #endregion

        #region T_Classify Method

        //T_Classify Get
            T_Classify GetT_Classify(int classifyID);
            T_Classify GetT_Classify(Item item, ClassM classm);
            IQueryable<T_Classify> GetT_Classifys(Item item);
            IQueryable<T_Classify> GetT_Classifys(ClassM classm);
        //T_Classify Set
            T_Classify AddClassify(Item item, ClassM classm);
            void DeleteClassify(Item item, ClassM classm);
        #endregion

        #region T_Collection Method

        //T_Collection Get
            T_Collection GetT_Collection(int collectionID);
            T_Collection GetT_Collection(Item item, User user);
            IQueryable<T_Collection> GetT_Collections(Item item);
            IQueryable<T_Collection> GetT_Collections(User user);
        //T_Collection Set
            T_Collection AddCollection(User user, Item item);
            void DeleteCollection(User user, Item item);
        #endregion

        #region T_Shopping Method

        //T_Shopping Get
         T_Shopping GetT_Shopping(int shoppingID);
         T_Shopping GetT_Shopping(Item item, User user);
         IQueryable<T_Shopping> GetT_Shopping(Item item);
         IQueryable<T_Shopping> GetT_Shopping(User user);
        //T_Shopping Set
         T_Shopping AddShopping(User user, Item item);
         T_Shopping AddShopping(User user, Item item, int Count, string Cut = null);
         void DeleteShopping(User user, Item item);
         T_Shopping DeleteShopping(User user, Item item, int Count);
        #endregion

        #region User Method

        //User Get
        User GetUser(int userID);
        User GetUser(string userName);
        User GetUser(Item item);//publisher
        //User Method Set
        UserCreateStatus UserCreate(string name, string password, string address, string consignee, string tel, string zipcode, bool overwrite = false);
        bool UserChangePassword(User user, string pswOld, string pswNew);
        //User Method Get
        bool UserExist(User user);
        bool ValidateUser(string userName, string password);
        IQueryable<User> UsersGetByItems(IQueryable<Item> items);
        IQueryable<User> UsersGetByRole(string role);
        //User Method Get <itorate>
        IQueryable<User> UsersGetByItems(IQueryable<User> users, IQueryable<Item> items);
        IQueryable<User> UsersGetByRole(IQueryable<User> users, string role);

        #endregion

    }
}
