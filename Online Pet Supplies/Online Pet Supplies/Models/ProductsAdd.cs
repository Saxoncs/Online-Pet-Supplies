using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Models
{
    //Class containing dummy data for products class
    public class ProductAdd
    {
        public ProductAdd()
        {
            P_Products.Add(new Products() { Name = "Dog Food", Url = "I", Price = 29 });
            P_Products.Add(new Products() { Name = "Cat Food", Url = "", Price = 29 });
            P_Products.Add(new Products() { Name = "Cat Toy", Url = "", Price = 15 });
            P_Products.Add(new Products() { Name = "Dog Toy", Url = "", Price = 17 });
            P_Products.Add(new Products() { Name = "Flea Treatment", Url = "", Price = 50 });
            P_Products.Add(new Products() { Name = "Horse Food", Url = "", Price = 100 });
        }

        public List<Products> ProductList
        {
            get { return P_Products; }
        }

        
        private List<Products> P_Products = new List<Products>();
    }

}
