using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    // class containing information from the Ordered Item table in the database
    public class OrderedItem
    {
        public int OrderID { get; set; }
        public int ItemID { get; set; }
        public int Quantity { get; set; }
    }
}