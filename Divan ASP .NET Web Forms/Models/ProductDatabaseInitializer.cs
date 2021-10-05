using System.Collections.Generic;
using System.Data.Entity;

namespace Divan_ASP.NET_Web_Forms.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        protected override void Seed(ProductContext context)
        {
            GetCategories().ForEach(c => context.Categories.Add(c));
            GetProducts().ForEach(p => context.Products.Add(p));
        }

        private static List<Category> GetCategories()
        {
            var categories = new List<Category>
            {
                new Category
                {
                    CategoryID = 1,
                    CategoryName = "Sofas",
                    Description = "Used every day"
                },
                new Category
                {
                    CategoryID = 2,
                    CategoryName = "Sectional Sofas"
                },
                new Category
                {
                    CategoryID = 3,
                    CategoryName = "Sleeper Sofas"
                },
                new Category
                {
                    CategoryID = 4,
                    CategoryName = "Ottoman Chairs"
                },
                new Category
                {
                    CategoryID = 5,
                    CategoryName = "Dining Tables",
                    Description = "Could be used not only for dinner."
                },
                new Category
                {
                    CategoryID = 6,
                    CategoryName = "Arm Chairs"
                },
                new Category
                {
                    CategoryID = 7,
                    CategoryName = "Console Tables"
                },
                new Category
                {
                    CategoryID = 8,
                    CategoryName = "Beds",
                    Description = "Great for lying down on them."
                },
                new Category
                {
                    CategoryID = 9,
                    CategoryName = "Nightstands"
                },
                new Category
                {
                    CategoryID = 10,
                    CategoryName = "Mirrors"
                },
                new Category
                {
                    CategoryID = 11,
                    CategoryName = "Desks"
                },
                new Category
                {
                    CategoryID = 12,
                    CategoryName = "Storage Cabinets"
                },
                new Category
                {
                    CategoryID = 13,
                    CategoryName = "Bookcases"
                }
            };
            return categories;
        }

        private static List<Product> GetProducts()
        {
            var products = new List<Product>
            {
                new Product
                {
                    ProductID = 1,
                    ProductName = "Extravagant Sofa",
                    //ManufacturerName = "Jasiway",
                    Description = "Cool extravagant sofa." + "For fruitful rest!",
                    ImagePath = "products/sofa-1.jpg",
                    UnitPrice = 249.99,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 2,
                    ProductName = "Family Sofa",
                    //ManufacturerName = "Jasiway",
                    Description = "A sofa for the whole family to enjoy.",
                    ImagePath="products/sofa-2.jpg",
                    UnitPrice = 379.99,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 3,
                    ProductName = "Low-priced Sofa",
                    //ManufacturerName = "Jasiway",
                    Description = "A sofa for the poor.",
                    ImagePath="products/sofa-3.jpg",
                    UnitPrice = 132.99,
                    CategoryID = 1
                },
                new Product
                {
                    ProductID = 4,
                    ProductName = "Low-priced Sectional Sofa",
                    Description = "A sectional sofa for the poor and needy.",
                    ImagePath="products/sectional-sofa-1.jpg",
                    UnitPrice = 145.99,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 5,
                    ProductName = "Average-priced Sectional Sofa",
                    Description = "This sectional sofa is for your average Joe.",
                    ImagePath="products/sectional-sofa-2.jpg",
                    UnitPrice = 284.95,
                    CategoryID = 2
                },
                new Product
                {
                    ProductID = 6,
                    ProductName = "Luxury Sectional Sofa",
                    Description = "Sectional Sofa for people with high budget.",
                    ImagePath="products/sectional-sofa-3.jpg",
                    UnitPrice = 399.95,
                    CategoryID = 2
                },
               new Product
               {
                    ProductID = 7,
                    ProductName = "Average Sleeper Sofa",
                    Description = "Sleeper Sofa for average people.",
                    ImagePath="products/sleeper-sofa-1.jpg",
                    UnitPrice = 194.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 8,
                    ProductName = "Low-Priced Sleeper Sofa",
                    Description = "Sleeper Sofa for people with low budget.",
                    ImagePath="products/sleeper-sofa-2.jpg",
                    UnitPrice = 124.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 9,
                    ProductName = "Expensive Sleeper Sofa",
                    Description = "Sleeper Sofa for people with high budget.",
                    ImagePath="products/sleeper-sofa-3.jpg",
                    UnitPrice = 304.99,
                    CategoryID = 3
                },
                new Product
                {
                    ProductID = 10,
                    ProductName = "Stylish Chair Ottoman",
                    Description = "Stylish, but not too expensive Chair Ottoman.",
                    ImagePath="products/ottoman-chair-1.jpg",
                    UnitPrice = 65.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 11,
                    ProductName = "Low-priced Chair Ottoman",
                    Description = "Really cheap Chair Ottoman.",
                    ImagePath="products/ottoman-chair-2.jpg",
                    UnitPrice = 15.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 12,
                    ProductName = "Extravagant Chair Ottoman",
                    Description = "Chair Ottoman for real Sultans.",
                    ImagePath="products/ottoman-chair-3.jpg",
                    UnitPrice = 125.00,
                    CategoryID = 4
                },
                new Product
                {
                    ProductID = 13,
                    ProductName = "Average-priced Dining Table",
                    Description = "Dining Table for the Average family.",
                    ImagePath="products/dining-table-1.jpg",
                    UnitPrice = 75.00,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 14,
                    ProductName = "Design Dining Table",
                    Description = "Dining Table for the Not-So-Average family.",
                    ImagePath="products/dining-table-2.jpg",
                    UnitPrice = 205.00,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 15,
                    ProductName = "Low-priced Dining Table",
                    Description = "Dining Table for the poor.",
                    ImagePath="products/dining-table-3.jpg",
                    UnitPrice = 45.00,
                    CategoryID = 5
                },
                new Product
                {
                    ProductID = 16,
                    ProductName = "Average Armchair",
                    Description = "Average Armcharir for the average person.",
                    ImagePath="products/armchair-1.jpg",
                    UnitPrice = 95.00,
                    CategoryID = 6
                },
                new Product
                {
                    ProductID = 17,
                    ProductName = "Luxurious Armchair",
                    Description = "Ergonomic and comfortable armchair.",
                    ImagePath="products/armchair-2.jpg",
                    UnitPrice = 195.00,
                    CategoryID = 6
                },
                new Product
                {
                    ProductID = 18,
                    ProductName = "Basic Armchair",
                    Description = "Armchair for the unpretentious.",
                    ImagePath="products/armchair-3.jpg",
                    UnitPrice = 55.00,
                    CategoryID = 6
                },
                new Product
                {
                    ProductID = 19,
                    ProductName = "Expensive Console Table",
                    Description = "Console Table for people with cash.",
                    ImagePath="products/console-table-1.jpg",
                    UnitPrice = 195.00,
                    CategoryID = 7
                },
                new Product
                {
                    ProductID = 20,
                    ProductName = "Really Expensive Console Table",
                    Description = "Console Table for people with a lot of cash.",
                    ImagePath="products/console-table-2.jpg",
                    UnitPrice = 295.00,
                    CategoryID = 7
                },
                new Product
                {
                    ProductID = 21,
                    ProductName = "Low-priced Console Table",
                    Description = "Low budget Console Table.",
                    ImagePath="products/console-table-3.jpg",
                    UnitPrice = 95.00,
                    CategoryID = 7
                },
                new Product
                {
                    ProductID = 22,
                    ProductName = "Average-priced Bed",
                    Description = "Bed for the average person.",
                    ImagePath="products/bed-1.jpg",
                    UnitPrice = 165.00,
                    CategoryID = 8
                },
                new Product
                {
                    ProductID = 23,
                    ProductName = "Luxurious Bed",
                    Description = "Highly comfortable bed.",
                    ImagePath="products/bed-2.jpg",
                    UnitPrice = 285.00,
                    CategoryID = 8
                },
                new Product
                {
                    ProductID = 24,
                    ProductName = "Cheap Bed",
                    Description = "Low budget bed.",
                    ImagePath="products/bed-3.jpg",
                    UnitPrice = 99.99,
                    CategoryID = 8
                },
                new Product
                {
                    ProductID = 25,
                    ProductName = "High Quality Nightstand",
                    Description = "High budget Nightstand made from high quality materials.",
                    ImagePath="products/nightstand-1.jpg",
                    UnitPrice = 199.99,
                    CategoryID = 9
                },
                new Product
                {
                    ProductID = 26,
                    ProductName = "Modern Nightstand",
                    Description = "Modern Nightstand made from good quality materials.",
                    ImagePath="products/nightstand-2.jpg",
                    UnitPrice = 109.99,
                    CategoryID = 9
                },
                new Product
                {
                    ProductID = 27,
                    ProductName = "Low-priced Nightstand",
                    Description = "Cheap Nightstand from average materials.",
                    ImagePath="products/nightstand-3.jpg",
                    UnitPrice = 59.99,
                    CategoryID = 9
                },
                new Product
                {
                    ProductID = 28,
                    ProductName = "Average-priced Mirror",
                    Description = "Mirror from good quality materials.",
                    ImagePath="products/mirror-1.jpg",
                    UnitPrice = 109.99,
                    CategoryID = 10
                },
                new Product
                {
                    ProductID = 29,
                    ProductName = "Design Mirror",
                    Description = "Mirror from high quality materials.",
                    ImagePath="products/mirror-2.jpg",
                    UnitPrice = 199.99,
                    CategoryID = 10
                },
                new Product
                {
                    ProductID = 30,
                    ProductName = "Kitchen Mirror",
                    Description = "Every day Mirror.",
                    ImagePath="products/mirror-3.jpg",
                    UnitPrice = 49.99,
                    CategoryID = 10
                },
                new Product
                {
                    ProductID = 31,
                    ProductName = "Low-priced Desk",
                    Description = "Low budget desk.",
                    ImagePath="products/desk-1.jpg",
                    UnitPrice = 49.99,
                    CategoryID = 11
                },
                new Product
                {
                    ProductID = 32,
                    ProductName = "Average-priced Desk",
                    Description = "Average desk for people with average budget.",
                    ImagePath="products/desk-2.jpg",
                    UnitPrice = 89.99,
                    CategoryID = 11
                },
                new Product
                {
                    ProductID = 33,
                    ProductName = "High-priced Desk",
                    Description = "High-priced desk for people with high budget.",
                    ImagePath="products/desk-3.jpg",
                    UnitPrice = 159.99,
                    CategoryID = 11
                },
                new Product
                {
                    ProductID = 34,
                    ProductName = "High-priced Storage Cabinet",
                    Description = "High quality Storage Cabinet from high quality materials.",
                    ImagePath="products/storage-cabinet-1.jpg",
                    UnitPrice = 259.99,
                    CategoryID = 12
                },
                new Product
                {
                    ProductID = 35,
                    ProductName = "Low-priced Storage Cabinet",
                    Description = "Storage Cabinet from good quality materials.",
                    ImagePath="products/storage-cabinet-2.jpg",
                    UnitPrice = 99.99,
                    CategoryID = 12
                },
                new Product
                {
                    ProductID = 36,
                    ProductName = "Average-priced Storage Cabinet",
                    Description = "Storage Cabinet from average quality materials.",
                    ImagePath="products/storage-cabinet-3.jpg",
                    UnitPrice = 187.99,
                    CategoryID = 12
                },
                new Product
                {
                    ProductID = 37,
                    ProductName = "Average-priced Bookcase",
                    Description = "Average Bookcase from average quality materials.",
                    ImagePath="products/bookcase-1.jpg",
                    UnitPrice = 128.99,
                    CategoryID = 13
                },
                new Product
                {
                    ProductID = 38,
                    ProductName = "High quality Bookcase",
                    Description = "High budget Bookcase from high quality materials.",
                    ImagePath="products/bookcase-2.jpg",
                    UnitPrice = 205.99,
                    CategoryID = 13
                },
                new Product
                {
                    ProductID = 39,
                    ProductName = "Low-priced Bookcase",
                    Description = "Bookcase from good quality materials.",
                    ImagePath="products/bookcase-3.jpg",
                    UnitPrice = 95.99,
                    CategoryID = 13
                }
            };
            return products;
        }

    }
}