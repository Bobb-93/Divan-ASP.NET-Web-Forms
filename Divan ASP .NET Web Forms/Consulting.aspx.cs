using System;

namespace Divan_ASP.NET_Web_Forms
{
    public partial class Consulting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Continue_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Services.aspx");
        }
    }
}