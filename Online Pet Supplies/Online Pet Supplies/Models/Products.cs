using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace Online_Pet_Supplies.Models
{
    public class Products
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public string Url { get; set; }

    }
}