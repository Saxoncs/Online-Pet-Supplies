// Codebehind file for the Registration page
using Online_Pet_Supplies.Business_Layer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer.MainSite
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmitRegistrationForm_Click(object sender, EventArgs e)
        {
            RegisterCustomerBL reg = new RegisterCustomerBL();

           
            int registered = reg.RegisterUser(txtFirstName.Text, txtLastName.Text, txtStreet.Text, txtTown.Text, txtPostCode.Text, txtEmailAddress.Text, txtPassword1.Text);
            if (registered == 1)
            {
                Response.Redirect("/Application Layer/MainSite/HomePage.aspx");

            }
            else if (registered == 2)
                Response.Redirect("/Application Layer/MainSite/Contact.aspx");

            else if (registered == 3)
                Label1.Text = "Email Address Already Exists";
        }
    }
    }
