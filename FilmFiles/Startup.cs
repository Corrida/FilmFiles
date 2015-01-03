using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FilmFiles.Startup))]
namespace FilmFiles
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
