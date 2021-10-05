using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Divan_ASP.NET_Web_Forms.Models;
using System.Web.ModelBinding;

namespace Divan_ASP.NET_Web_Forms
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Product> GetProduct([QueryString("productID")] int? productID, [RouteData] string productName)
        {
            var _db = new ProductContext();
            IQueryable<Product> query = _db.Products;
            if (productID.HasValue && productID > 0)
            {
                query = query.Where(p => p.ProductID == productID);
            }
            else if (!String.IsNullOrEmpty(productName))
            {
                query = query.Where(p =>
                                String.Compare(p.ProductName, productName) == 0
                );
            }
            else
            {
                query = null;
            }
            return query;
        }
    }
}