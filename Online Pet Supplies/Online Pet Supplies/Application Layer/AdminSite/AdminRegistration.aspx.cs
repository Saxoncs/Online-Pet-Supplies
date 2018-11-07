//Codebehind file for the Admin registration page
using Online_Pet_Supplies.Business_Layer;
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

        }

        protected void btnSubmitRegistrationForm_Click(object sender, EventArgs e)
        {
            RegisterCustomerBL reg = new RegisterCustomerBL();

            string cusType = "admin";
            int registered = reg.RegisterAdmin(txtFirstName.Text, txtLastName.Text, txtEmailAddress.Text, txtPassword1.Text,cusType);
            if (registered == 1)
            {
                Label1.Text = "Admin Account successfully created"; ;

            }
            else if (registered == 2)
                Label1.Text = "Error Please Try Again";

            else if (registered == 3)
                Label1.Text = "Email Address Already Exists";
        }
    }
    }
