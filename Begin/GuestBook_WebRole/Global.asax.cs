﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.WindowsAzure;
using Microsoft.WindowsAzure.ServiceRuntime;

namespace GuestBook_WebRole
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            CloudStorageAccount.SetConfigurationSettingPublisher(
                (configName, configSetter) =>
                {
                    configSetter(RoleEnvironment.GetConfigurationSettingValue(configName));
                }
            );
        }
    }
}