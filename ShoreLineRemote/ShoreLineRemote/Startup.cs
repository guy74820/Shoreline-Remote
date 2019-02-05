using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ShoreLineRemote.Startup))]
namespace ShoreLineRemote
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
