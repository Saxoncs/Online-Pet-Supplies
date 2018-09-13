// Codebehind file for the Login page
using Online_Pet_Supplies.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Event handler for clicking the submit button, currently hardcoded
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string checkUsername = LoginDetails.Username;
            string checkPass = LoginDetails.Password;
            string AdminUser = LoginDetails.UsernameAdmin;
            string AdminPass = LoginDetails.PasswordAdmin;

            //If the user logs in with a regular account, store the customers username in the session data and redirect to the homepage
            if (userName.Text == checkUsername & password.Text == checkPass )
            {
                Session["username"] = userName.Text;
                Response.Redirect("HomePage.aspx");
              

            }
            // If the user logs in with employee credentials, store the administrators username in the session data and redirect to the adminlogin page
            else if (userName.Text == AdminUser & password.Text == AdminPass)
            {
                Session["username"] = userName.Text;
                Response.Redirect("/Application Layer/AdminSite/AdminLogin.aspx");
            }

        }
    }
}