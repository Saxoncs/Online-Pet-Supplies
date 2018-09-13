// Codebehind file for the Payment page
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Stores the current date as a string to be used in the expiration date validator
            DateValidator.MinimumValue = System.DateTime.Now.ToString("dd-MM-yyyy");
        }
    }
}