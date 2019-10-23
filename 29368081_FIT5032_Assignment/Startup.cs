using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(_29368081_FIT5032_Assignment.Startup))]
namespace _29368081_FIT5032_Assignment
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
