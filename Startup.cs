﻿using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(vallorCafe_Website.Startup))]
namespace vallorCafe_Website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
