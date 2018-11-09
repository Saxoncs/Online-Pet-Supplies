using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    // class containing information from the OrderedItem table in the database
    public class OrderedItem
    {
        public int OrderID { get; set; }
        public int ItemID { get; set; }
        public int Quantity { get; set; }
    }
}