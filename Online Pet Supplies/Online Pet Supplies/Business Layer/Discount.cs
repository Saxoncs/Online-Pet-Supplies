using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class Discount
    {
        public int DiscountCode { get; set; }
        public String Description { get; set; }
        public decimal DiscountPercent { get; set; }
    }
}