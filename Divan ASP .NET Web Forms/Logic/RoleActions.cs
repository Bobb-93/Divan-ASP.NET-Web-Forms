using Divan_ASP.NET_Web_Forms.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Divan_ASP.NET_Web_Forms.Logic
{
    internal class RoleActions
    {
        internal void createAdmin()
        {
            //Access the application context and create result variables
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            //Create a RoleStore object by using the ApplicationDbContext object
            //The RoleStore is only allowed to contain Identity Role objects
            var roleStore = new RoleStore<IdentityRole>(context);

            //Create a RoleManager object, that is only allowed to contain
            //IdentityRole objects.
            //When creating the RoleManager object, you pass in(as a parameter) 
            //a new RoleStore object
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            //Then you create the "Administrator" role if it doesn't exist
            if (!roleMgr.RoleExists("Administrator"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole("Administrator"));
                if (!IdRoleResult.Succeeded)
                {
                    //Handle the Error condition if there's a problem creating the
                    //RoleManager object
                }
            }

            //Create a UserManager object based on the UserStore object and the
            //ApplicationDbContext object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));

            var appUser = new ApplicationUser()
            {
                UserName = "borisiakimov@gmail.com",
            };

            IdUserResult = userMgr.Create(appUser, "Pa$$word");
            
            if (IdUserResult.Succeeded)
            {
                //If the new "Admin" user was successfully created,
                //add the "Admin" user to the "Administrator" role.
                IdUserResult = userMgr.AddToRole(appUser.Id, "Administrator");
                if (!IdUserResult.Succeeded)
                {
                    //Handle the Error Condition if there's a problem adding the user to the role
                }
                else
                {
                    //Handle the Error Condition if there's a problem creating the new user
                }
            }
        }
    }
}