using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    // class containing information from the Item table in the database
    public class Item
    {
        public int ItemID { get; set; }
        public String Name { get; set; }
        public decimal Price { get; set; }


    }
}