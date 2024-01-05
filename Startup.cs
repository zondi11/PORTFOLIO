using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ZON_220065605.Startup))]
namespace ZON_220065605
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
