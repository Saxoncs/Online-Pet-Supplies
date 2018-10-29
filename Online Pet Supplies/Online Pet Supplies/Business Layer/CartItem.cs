using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Pet_Supplies.Business_Layer
{
    public class CartItem
    {

        public CartItem() { }

        public CartItem(Item item, int quantity)
        {
            this.Item = item;
            this.Quantity = quantity;

        }

        public Item Item;
        public int Quantity;

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;

        }


        public string Display()
        {
            string displaystring = string.Format("{0} ({1} at {2} each )",
            Item.Name,
            Quantity.ToString(),
            Item.Price.ToString("c"));

            //I added a return value so the function gives a string
            //if that's not neccessary then just remove this and change public string to public void
            return (displaystring);

        }



    }

 
}