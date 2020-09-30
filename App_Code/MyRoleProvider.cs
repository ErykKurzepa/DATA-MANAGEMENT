using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Security;
using System.Security.Principal;
using System.Configuration;
using System.Text.RegularExpressions;

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
                if (item.Id.ToString() == username)
                {
                    //Customer
                    if (item.Customer_List == true)
                    { roles.Add("Customer_List"); }
                    if (item.Customer_Insert == true)
                    { roles.Add("Customer_Insert"); }
                    if (item.Customer_Edit == true)
                    { roles.Add("Customer_Edit"); }
                    if (item.Customer_Delete == true)
                    { roles.Add("Customer_Delete"); }
                    //Customer PART and PRODUCT
                    if (item.Customer_Part_List == true)
                    { roles.Add("Customer_Part_List"); }
                    if (item.Customer_Part_Insert == true)
                    { roles.Add("Customer_Part_Insert"); }
                    if (item.Customer_Part_Edit == true)
                    { roles.Add("Customer_Part_Edit"); }
                    if (item.Customer_Part_Delete == true)
                    { roles.Add("Customer_Part_Delete"); }
                    //Customer ORDER
                    if (item.Customer_Order_List == true)
                    { roles.Add("Customer_Order_List"); }
                    if (item.Customer_Order_Insert == true)
                    { roles.Add("Customer_Order_Insert"); }
                    if (item.Customer_Order_Edit == true)
                    { roles.Add("Customer_Order_Edit"); }
                    if (item.Customer_Order_Delete == true)
                    { roles.Add("Customer_Order_Delete"); }
                    //CONTRACTOR
                    if (item.Contractor_List == true)
                    { roles.Add("Contractor_List"); }
                    if (item.Contractor_Insert == true)
                    { roles.Add("Contractor_Insert"); }
                    if (item.Contractor_Edit == true)
                    { roles.Add("Contractor_Edit"); }
                    if (item.Contractor_Delete == true)
                    { roles.Add("Contractor_Delete"); }
                    //CONTRACTOR ORDER
                    if (item.Contractor_Order_List == true)
                    { roles.Add("Contractor_Order_List"); }
                    if (item.Contractor_Order_Insert == true)
                    { roles.Add("Contractor_Order_Insert"); }
                    if (item.Contractor_Order_Edit == true)
                    { roles.Add("Contractor_Order_Edit"); }
                    if (item.Contractor_Order_Delete == true)
                    { roles.Add("Contractor_Order_Delete"); }
                    //NOTIFICATION
                    if (item.Notification_List == true)
                    { roles.Add("Notification_List"); }
                    if (item.Notification_Insert == true)
                    { roles.Add("Notification_Insert"); }
                    if (item.Notification_Edit == true)
                    { roles.Add("Notification_Edit"); }
                    if (item.Notification_Delete == true)
                    { roles.Add("Notification_Delete"); }
                    //TASK
                    if (item.Task_List == true)
                    { roles.Add("Task_List"); }
                    if (item.Task_Insert == true)
                    { roles.Add("Task_Insert"); }
                    if (item.Task_Edit == true)
                    { roles.Add("Task_Edit"); }
                    if (item.Task_Delete == true)
                    { roles.Add("Task_Delete"); }
                    //TECHNOLOGY
                    if (item.Technology_List == true)
                    { roles.Add("Technology_List"); }
                    if (item.Technology_Insert == true)
                    { roles.Add("Technology_Insert"); }
                    if (item.Technology_Edit == true)
                    { roles.Add("Technology_Edit"); }
                    if (item.Technology_Delete == true)
                    { roles.Add("Technology_Delete"); }
                    //CNC PROGRAM
                    if (item.CNC_Program_List == true)
                    { roles.Add("CNC_Program_List"); }
                    if (item.CNC_Program_Insert == true)
                    { roles.Add("CNC_Program_Insert"); }
                    if (item.CNC_Program_Edit == true)
                    { roles.Add("CNC_Program_Edit"); }
                    if (item.CNC_Program_Delete == true)
                    { roles.Add("CNC_Program_Delete"); }
                    //TOOL
                    if (item.Tool_List == true)
                    { roles.Add("Tool_List"); }
                    if (item.Tool_Insert == true)
                    { roles.Add("Tool_Insert"); }
                    if (item.Tool_Edit == true)
                    { roles.Add("Tool_Edit"); }
                    if (item.Tool_Delete == true)
                    { roles.Add("Tool_Delete"); }
                    //FIXTURE
                    if (item.Fixture_List == true)
                    { roles.Add("Fixture_List"); }
                    if (item.Fixture_Insert == true)
                    { roles.Add("Fixture_Insert"); }
                    if (item.Fixture_Edit == true)
                    { roles.Add("Fixture_Edit"); }
                    if (item.Fixture_Delete == true)
                    { roles.Add("Fixture_Delete"); }
                    //QUALITY
                    if (item.Quality_List == true)
                    { roles.Add("Quality_List"); }
                    if (item.Quality_Insert == true)
                    { roles.Add("Quality_Insert"); }
                    if (item.Quality_Edit == true)
                    { roles.Add("Quality_Edit"); }
                    if (item.Quality_Delete == true)
                    { roles.Add("Quality_Delete"); }
                    //CMM_PROGRAM
                    if (item.CMM_Program_List == true)
                    { roles.Add("CMM_Program_List"); }
                    if (item.CMM_Program_Insert == true)
                    { roles.Add("CMM_Program_Insert"); }
                    if (item.CMM_Program_Edit == true)
                    { roles.Add("CMM_Program_Edit"); }
                    if (item.CMM_Program_Delete == true)
                    { roles.Add("CMM_Program_Delete"); }
                    //USER
                    if (item.Users_List == true)
                    { roles.Add("Users_List"); }
                    if (item.Users_Insert == true)
                    { roles.Add("Users_Insert"); }
                    if (item.Users_Edit == true)
                    { roles.Add("Users_Edit"); }
                    if (item.Users_Delete == true)
                    { roles.Add("Users_Delete"); }
                    //FORM TEMPLATES
                    if (item.FormTemplates_List == true)
                    { roles.Add("FormTemplates_List"); }
                    if (item.FormTemplates_Insert == true)
                    { roles.Add("FormTemplates_Insert"); }
                    if (item.FormTemplates_Edit == true)
                    { roles.Add("FormTemplates_Edit"); }
                    if (item.FormTemplates_Delete == true)
                    { roles.Add("FormTemplates_Delete"); }
                    //ADMIN
                    if (item.Admin == true)
                    { roles.Add("Admin"); }

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
