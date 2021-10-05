using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Divan_ASP.NET_Web_Forms
{
    public partial class Interior_Detailing : System.Web.UI.Page
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