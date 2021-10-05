using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.Entity;
using Divan_ASP.NET_Web_Forms.Models;
using Divan_ASP.NET_Web_Forms.Logic;

namespace Divan_ASP.NET_Web_Forms
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Initialize the product database.
            Database.SetInitializer(new ProductDatabaseInitializer());

            //using (var context = new ProductContext())
            //{
            //    context.Database.Initialize(force: true);
            //}

            RoleActions roleActions = new RoleActions();
            roleActions.createAdmin();

            //Add Routes.
            RegisterCustomRoutes(RouteTable.Routes);
        }

        void RegisterCustomRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("ProductsByCategoryRoute", "Category/{categoryName}", "~/ProductList.aspx");
            routes.MapPageRoute("ProductByNameRoute", "Product/{productName}", "~/ProductDetails.aspx");
        }

        void Application_Error(object sender, EventArgs e)
        {
            //Code that runs when an unhandled exception occurs.

            //Get last error from the server
            Exception exc = Server.GetLastError();

            if (exc is HttpUnhandledException)
            {
                if (exc.InnerException != null)
                {
                    exc = new Exception(exc.InnerException.Message);
                    //Pass the error on to the error page
                    Server.Transfer("ErrorPage.aspx?handler=Application_Error%20-%20Global.asax", true);
                }

            }
        }
    }
}