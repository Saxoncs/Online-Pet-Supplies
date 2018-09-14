// Codebehind file for the Purchase History page
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer
{
    public partial class PurchaseHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //A simple session data test
            if (Session["username"] == null)

            {
                UserSesh.Text = "you must be looged in to view this page";
            }

            else
             
            {
                loginButton.Visible = false;
                UserSesh.Text = "Welcome " + (string)Session["username"];
            }

        }

        protected void Loginredirect(object sender, EventArgs e)

        {
            Response.Redirect("/Application Layer/MainSite/Login.aspx");
        }
    }
}