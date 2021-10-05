using System.Data.Entity;

namespace Divan_ASP.NET_Web_Forms.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("Divan")
        {

        }

        public DbSet<Category> Categories
        {
            get;
            set;
        }

        public DbSet<Product> Products
        {
            get;
            set;
        }

        
        public DbSet<CartItem> ShoppingCartItems
        {
            get;
            set;
        }

        
        public DbSet<Order> Orders
        {
            get;
            set;
        }

        public DbSet<OrderDetail> OrderDetails
        {
            get;
            set;
        }
        
    }
}