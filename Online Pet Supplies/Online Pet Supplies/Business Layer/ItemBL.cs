using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    //Business Layer class for utilising items in the business layer
    public class ItemBL
    {

        public List<Item> GetItems()

        {

            try

            {

                ItemDal objdal = new ItemDal();

                return objdal.GetItems();

            }

            catch

            {

                throw;

            }

        }
        public List<Item> GetItem (Int16 ID)
        {
            try
            {
                ItemDal objdal = new ItemDal();
                return objdal.Read(ID);
            }
            catch
            {
                throw;
            }
        }

        public void DeleteItem(int ItemID)
        {
            try
            {
                ItemDal itemDal = new ItemDal();
                itemDal.DeleteItem(ItemID);

            }
            catch
            {
                throw;
            }
        }


        public void InsertItem(string Name,int Price)
        {
            try
            {
                ItemDal insertItem = new ItemDal();
                insertItem.Insert(Name,Price);

            }
            catch
            {
                throw;
            }
        }


    }

}



