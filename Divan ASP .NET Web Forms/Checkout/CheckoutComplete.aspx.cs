using System;

namespace Divan_ASP.NET_Web_Forms.Checkout
{
    public partial class CheckoutComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TransactionId.Text = CheckoutStart.orderId;
        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("/ProductList.aspx");
        }

    }
}