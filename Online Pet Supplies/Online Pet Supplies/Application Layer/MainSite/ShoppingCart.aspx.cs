// Codebehind file for the Shopping Cart page
using Online_Pet_Supplies.Business_Layer;
using Online_Pet_Supplies.DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Item i = new Item();
            i.ItemID = 1; i.Name = "apples"; i.Price = 1;

            CartItemList a = new CartItemList();
            a.AddItem(i, 1);
            Session["Cart"] = a;


        }

        protected void PostagePage(object sender, EventArgs e)
        {
            Response.Redirect("/Application Layer/MainSite/Postage.aspx");
        }

        protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }
    }
}