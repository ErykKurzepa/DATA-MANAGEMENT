using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;

namespace roleproviderlibrary
{
    public class MyRoleProvider: RoleProvider
    {

        public override string[] GetRolesForUser(string username)
        {
            List<string> roles = new List<string>();
            YASA_PL.YASA_PLContainer x = new YASA_PL.YASA_PLContainer();

            var users = from u in x.Users
                        select u;
            foreach (var item in users)
            {
                if (item.Email == userName)
                {
                    //Customer
                    if (item.R_Customer_View)
                    { roles.Add("R_Customer_View"); }
                    if (item.R_Customer_Insert)
                    { roles.Add("R_Customer_Insert"); }
                    if (item.R_Customer_Edit)
                    { roles.Add("R_Customer_Edit"); }
                    if (item.R_Customer_Delete)
                    { roles.Add("R_Customer_Delete"); }

                    return roles.ToArray();
                }
            }
            return roles.ToArray();
        }

#region staff I dont use
        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

     

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            throw new NotImplementedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
#endregion 
    }
  

}
