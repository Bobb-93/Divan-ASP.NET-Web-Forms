using System;
using System.Linq;
using Divan_ASP.NET_Web_Forms.Models;
using System.Web.ModelBinding;
using System.Web.Routing;

namespace Divan_ASP.NET_Web_Forms
{
    public partial class ProductList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Category> GetCategories()
        {
            var _db = new Divan_ASP.NET_Web_Forms.Models.ProductContext();
            IQueryable<Category> query = _db.Categories;

            return query;
        }

        public IQueryable<Product> GetProducts([QueryString("id")] int? categoryID, [RouteData] string categoryName)
        {
            var _db = new ProductContext();
            IQueryable<Product> query = _db.Products;

            if (categoryID.HasValue && categoryID > 0)
            {
                query = query.Where(p => p.CategoryID == categoryID);
            }

            if (!String.IsNullOrEmpty(categoryName))
            {
                query = query.Where(p => String.Compare(p.Category.CategoryName, categoryName) == 0);
            }

            return query;
        }
    }
}