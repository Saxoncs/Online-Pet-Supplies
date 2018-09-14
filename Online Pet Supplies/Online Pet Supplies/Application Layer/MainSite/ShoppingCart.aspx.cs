// Codebehind file for the Shopping Cart page
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

        }

        protected void PostagePage(object sender, EventArgs e)
        {
            Response.Redirect("/Application Layer/MainSite/Postage.aspx");
        }
    }
}