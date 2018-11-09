using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.DataAccessLayer
{
    // class containing information from the Administrator table in the database
    public class Discount
    {
        public int DiscountCode { get; set; }
        public String Description { get; set; }
        public decimal DiscountPercent { get; set; }
    }
}