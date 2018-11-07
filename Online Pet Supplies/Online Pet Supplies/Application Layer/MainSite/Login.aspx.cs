// Codebehind file for the Login page
using Online_Pet_Supplies.Application_Layer.MainSite;
using Online_Pet_Supplies.Business_Layer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = ConfigurationManager.AppSettings["SecurePath"] + "login.aspx";
            Response.Redirect(url);
        }

        // If the form is valid gets the username and password and get a 1 or a 2 if its valid or not from the BL
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)

            {
                LoginDetails log = new LoginDetails
                {
                    username = userName.Text,
                    password = passWord.Text
                    
                };

                int loginSuccess = log.TryLogin();
                if (loginSuccess == 1)
                {
                    Response.Redirect("/Application Layer/MainSite/HomePage.aspx");
                    HttpContext.Current.Session["Login"] = userName.Text;
                }
                else
                    Label1.Text =  "Email address or password is incorrect" ;
            }   
            
        }
    }
}