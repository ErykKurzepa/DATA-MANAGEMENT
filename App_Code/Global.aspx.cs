using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Principal;
using System.Configuration;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for Global
/// </summary>
public partial class MyApplication : HttpApplication
{
   
    //public override void Init()
    //{
    //    base.Init();
    //    AuthenticateRequest += new EventHandler(Global_AuthenticateRequest);
    //}

    //void Global_AuthenticateRequest(object sender, EventArgs e)
    //{
    //    if (Request.IsAuthenticated)
    //    {
    //        SetupRoles();
    //    }
    //}

    //public void SetupRoles()
    //{
    //    IIdentity formsIdentity = Context.User.Identity;
    //    string[] roles = LookupRolesFor(formsIdentity.Name);
    //    IPrincipal principalWithRoles = new GenericPrincipal(formsIdentity, roles);
    //    Context.User = principalWithRoles;
    //}

    //string[] LookupRolesFor(string userName)
    //{
    //    List<string> roles = new List<string>();
    //    YASA_PL.YASA_PLContainer x = new YASA_PL.YASA_PLContainer();

    //    var users = from u in x.Users
    //                select u;
    //    foreach (var item in users)
    //    {
    //        if (item.Email == userName)
    //        {
    //            //Customer
    //            if (item.R_Customer_View)
    //            { roles.Add("R_Customer_View"); }
    //            if (item.R_Customer_Insert)
    //            { roles.Add("R_Customer_Insert"); }
    //            if (item.R_Customer_Edit)
    //            { roles.Add("R_Customer_Edit"); }
    //            if (item.R_Customer_Delete)
    //            { roles.Add("R_Customer_Delete"); }

    //            return roles.ToArray();
    //        }
    //    }
    //    return roles.ToArray();
    //}
}