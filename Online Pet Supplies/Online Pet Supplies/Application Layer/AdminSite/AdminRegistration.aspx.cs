﻿//Codebehind file for the Admin registration page
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer.AdminSite
{
    public partial class AdminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // hardcoded value will be replaced with a link to the database in future
            // for now it kicks the user out if it's not the specific admin user
            if ((string)Session["username"] != "Admin")
            {
                Server.Transfer("/Application Layer/MainSite/HomePage.aspx", true);
                
            }
        }
    }
}