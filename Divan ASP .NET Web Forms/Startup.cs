using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Divan_ASP.NET_Web_Forms.Startup))]
namespace Divan_ASP.NET_Web_Forms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
