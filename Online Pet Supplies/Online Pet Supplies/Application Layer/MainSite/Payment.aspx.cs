// Codebehind file for the Payment page
using Online_Pet_Supplies.Business_Layer;
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

        protected void submitPayment_Click(object sender, EventArgs e)
        {
            IPaymentSystem paymentSystem = INFT3050PaymentFactory.Create();

            

            PaymentRequest payment = new PaymentRequest();


            payment.CardName = "Arthur Anderson";
            payment.CardNumber = "4444333322221111";
            payment.CVC = 123;
            payment.Expiry = new DateTime(2020, 11, 1);
            payment.Amount = 200;
            payment.Description = "test";
            var task = paymentSystem.MakePayment(payment);

           

if (task.IsCompleted)

            {

                Label1.Text = task.Result.ToString(); ;
            }





            //Response.Redirect("/Application Layer/MainSite/OrderConfirmation.aspx");
        }
    }
}