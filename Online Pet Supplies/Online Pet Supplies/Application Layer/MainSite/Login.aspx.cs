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


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string checkUsername = LoginDetails.Username;
            string checkPass = LoginDetails.Password;

            if (userName.Text == checkUsername & password.Text == checkPass )
            {
                Session["username"] = userName.Text;
                Response.Redirect("HomePage.aspx");
              

            }
            else
            {
                
            }

        }
    }
}