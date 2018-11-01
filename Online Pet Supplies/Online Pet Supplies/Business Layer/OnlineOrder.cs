using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class OnlineOrder
    {
        public int OrderID { get; set; }
        public String Street { get; set; }
        public String Town { get; set; }
        public int PostCode { get; set; }
        public DateTime OrderDate { get; set; }
        public int CustomerID { get; set; }

    }
}