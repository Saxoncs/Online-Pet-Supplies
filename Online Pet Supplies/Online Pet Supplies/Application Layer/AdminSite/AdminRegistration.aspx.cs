﻿using System;
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
            if ((string)Session["username"] != "Admin")
            {
                Server.Transfer("/Application Layer/MainSite/HomePage.aspx", true);
                
            }
        }
    }
}