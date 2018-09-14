// Codebehind file for the Postage page
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Pet_Supplies.Application_Layer.MainSite
{
    public partial class Postage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void BtnSubmitPostageForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Application Layer/MainSite/Payment.aspx");
        }
    }
}