using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class ItemBL
    {

        public List<Item> GetItems()

        {

            try

            {

                ItemDAL objdal = new ItemDAL();

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
                ItemDAL objdal = new ItemDAL();
                return objdal.Read(ID);
            }
            catch
            {
                throw;
            }
        }





    }

}



