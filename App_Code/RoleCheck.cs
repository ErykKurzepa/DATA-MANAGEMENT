using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.Security;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for RoleCheck
/// </summary>

namespace RoleChecker
{

    public static class RoleCheck
    {
        public static void ListView_Insert_RoleCheck(string RoleName, DynamicHyperLink InsertHyperLinkID, string ToolTipMessage)
        {
            if (!(Roles.IsUserInRole(RoleName) || Roles.IsUserInRole("Admin")))
            {
                InsertHyperLinkID.Enabled = false;
                InsertHyperLinkID.CssClass = "disabled_link";
                InsertHyperLinkID.ToolTip = "Brak uprawnień: " + ToolTipMessage;
            }
        }

        public static void DetailView_Edit_RoleCheck(string RoleNameEdit, string EditDynamicHyperLinkID, FormView FormViewID, string ToolTipMessage)
        {
            if (!(Roles.IsUserInRole(RoleNameEdit) || Roles.IsUserInRole("Admin")))
            {
                DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormViewID.FindControl(EditDynamicHyperLinkID);
                EditDynamicHyperLink.Enabled = false;
                EditDynamicHyperLink.CssClass = "disabled_link";
                EditDynamicHyperLink.Action = "";
                EditDynamicHyperLink.ToolTip = "Brak uprawnień: " + ToolTipMessage;
            }
        }

        public static void DetailView_Delete_RoleCheck(string RoleNameDelete, string DeleteLinkButtonID, FormView FormViewID, string ToolTipMessage)
        {
            if (!(Roles.IsUserInRole("Technology_Delete") || Roles.IsUserInRole("Admin")))
            {
                LinkButton DeleteLinkButton = (LinkButton)FormViewID.FindControl(DeleteLinkButtonID);
                DeleteLinkButton.Enabled = false;
                DeleteLinkButton.CssClass = "disabled_link";
                DeleteLinkButton.OnClientClick = "";
                DeleteLinkButton.CommandName = "";
                DeleteLinkButton.ToolTip = "Brak uprawnień: " + ToolTipMessage;
            }
        }

        public static void GridView_Details_RoleCheck(string RoleNameView, string DetailsLinkButtonID, GridView GridViewID, string ToolTipMessage)
        {
            //przegladaj technologie
            if (!(Roles.IsUserInRole(RoleNameView) || Roles.IsUserInRole("Admin")))
            {
                try
                {
                    foreach (GridViewRow row in GridViewID.Rows)
                    {
                        if (row.RowType == DataControlRowType.DataRow)
                        {
                            DynamicHyperLink GridViewDetails = row.FindControl(DetailsLinkButtonID) as DynamicHyperLink;
                            GridViewDetails.Enabled = false;
                            GridViewDetails.CssClass = "disabled_link";
                            GridViewDetails.ToolTip = "Brak uprawnień: " + ToolTipMessage;
                        }
                    }
                }
                catch
                {
                }
            }

         }

        public static void GridView_Edit_RoleCheck(string RoleNameView, string EditLinkButtonID, GridView GridViewID, string ToolTipMessage)
        {
            //przegladaj technologie
            if (!(Roles.IsUserInRole(RoleNameView) || Roles.IsUserInRole("Admin")))
            {
                try
                {
                    foreach (GridViewRow row in GridViewID.Rows)
                    {
                        if (row.RowType == DataControlRowType.DataRow)
                        {
                            DynamicHyperLink Edit = row.FindControl(EditLinkButtonID) as DynamicHyperLink;
                            Edit.Enabled = false;
                            Edit.CssClass = "disabled_link";
                            Edit.ToolTip = "Brak uprawnień: " + ToolTipMessage;
                        }
                    }
                }
                catch
                {
                }
            }

        }

        public static void GridView_Delete_RoleCheck(string RoleNameView, string DeleteLinkButtonID, GridView GridViewID, string ToolTipMessage)
        {
            //przegladaj technologie
            if (!(Roles.IsUserInRole(RoleNameView) || Roles.IsUserInRole("Admin")))
            {
                try
                {
                    foreach (GridViewRow row in GridViewID.Rows)
                    {
                        if (row.RowType == DataControlRowType.DataRow)
                        {
                            LinkButton Delete = row.FindControl(DeleteLinkButtonID) as LinkButton;
                            Delete.Enabled = false;
                            Delete.CssClass = "disabled_link";
                            Delete.OnClientClick = "";
                            Delete.CommandName = "";
                            Delete.ToolTip = "Brak uprawnień: " + ToolTipMessage;
                        }
                    }
                }
                catch
                {
                }
            }

        }

        
    }
}