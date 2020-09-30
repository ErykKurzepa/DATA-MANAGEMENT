using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web.Security;
using System.Collections.Generic;
using YASA_PL;
using System.Web;
using System.Text.RegularExpressions;

public partial class Details : System.Web.UI.Page {
    protected MetaTable table;
    protected MetaTable CommentTable;
    protected MetaTable TaskTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        CommentTable = ASP.global_asax.DefaultModel.GetTable("CommentSet");
        TaskTable = ASP.global_asax.DefaultModel.GetTable("TaskSet");
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;

        if (Session["Record_Info"] != null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }


        string value = Request.QueryString["Id"];
        HyperLink1.NavigateUrl = "~/CommentSet/Insert.aspx?NotificationId=" + value;
        HyperLink2.NavigateUrl = "~/TaskSet/Insert.aspx?NotificationId=" + value ;
    
    
    
    
    
    
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        EDS1.Include = CommentTable.ForeignKeyColumnsNames;
        EntityDataSource1.Include = TaskTable.ForeignKeyColumnsNames;


        LinkButton ZakonczPowiadomienie = (LinkButton)FormView1.FindControl("ZakonczPowiadomienie");
        string value4 = Request.QueryString["Id"];
        ZakonczPowiadomienie.PostBackUrl = "~/NotificationSet/ZakonczPowiadomienie.aspx?Id=" + value4;

        LinkButton AnulujPowiadomienie = (LinkButton)FormView1.FindControl("AnulujPowiadomienie");
        AnulujPowiadomienie.PostBackUrl = "~/NotificationSet/AnulujPowiadomienie.aspx?Id=" + value4;


        //opiekun
        DynamicHyperLink UserIdOpiekun = (DynamicHyperLink)FormView1.FindControl("UserIdOpiekun");
        //status
        DynamicHyperLink ShowStatus = (DynamicHyperLink)FormView1.FindControl("ShowStatus");


        if (!(UserIdOpiekun.Text == HttpContext.Current.User.Identity.Name && ShowStatus.Text == "1"))
        {
            ZakonczPowiadomienie.Enabled = false;
            ZakonczPowiadomienie.CssClass = "disabled_link";
            ZakonczPowiadomienie.OnClientClick = "";
            ZakonczPowiadomienie.CommandName = "";
            ZakonczPowiadomienie.ToolTip = "Akcja dostępna wyłącznie dla opiekuna powiadomienia";
            AnulujPowiadomienie.Enabled = false;
            AnulujPowiadomienie.CssClass = "disabled_link";
            AnulujPowiadomienie.OnClientClick = "";
            AnulujPowiadomienie.CommandName = "";
            AnulujPowiadomienie.ToolTip = "Akcja dostępna wyłącznie dla opiekuna powiadomienia";
        }

        if (ShowStatus.Text == "3")
        {
            ZakonczPowiadomienie.ToolTip = "Powiadomienie zakończone - brak możliwości edycji";
            AnulujPowiadomienie.ToolTip = "Powiadomienie zakończone - brak możliwości edycji";
        }


         #region roles
         //edytuj 
         if (!(Roles.IsUserInRole("Notification_Edit") || Roles.IsUserInRole("Admin")))
         {
             DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
             EditDynamicHyperLink.Enabled = false;
             EditDynamicHyperLink.CssClass = "disabled_link";
             EditDynamicHyperLink.Action = "";
         }
         //usun 
         if (!(Roles.IsUserInRole("Notification_Delete") || Roles.IsUserInRole("Admin")))
         {
             LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
             DeleteLinkButton.Enabled = false;
             DeleteLinkButton.CssClass = "disabled_link";
             DeleteLinkButton.OnClientClick = "";
             DeleteLinkButton.CommandName = "";
         }

         //dodaj zadanie
         if (!(Roles.IsUserInRole("Task_Insert") || Roles.IsUserInRole("Admin")))
         {
             HyperLink2.Enabled = false;
             HyperLink2.CssClass = "disabled_link";
         }
         //przegladaj zadania
         if (!(Roles.IsUserInRole("Task_List") || Roles.IsUserInRole("Admin")))
         {
             foreach (GridViewRow row in GridViewZadania.Rows)
             {
                 if (row.RowType == DataControlRowType.DataRow)
                 {
                     DynamicHyperLink TechnologyListDetails = row.FindControl("TechnologyListDetails") as DynamicHyperLink;
                     TechnologyListDetails.Enabled = false;
                     TechnologyListDetails.CssClass = "disabled_link";
                     DynamicHyperLink TechnologyListDetailsArrow = row.FindControl("TechnologyListDetailsArrow") as DynamicHyperLink;
                     TechnologyListDetailsArrow.Enabled = false;
                     TechnologyListDetailsArrow.CssClass = "disabled_link";
                 }
             }
         }
         #endregion


    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void GridViewCustomer_Part_IndexSet_RowDataBound(object sender, GridViewRowEventArgs e)
    {


        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if ((Int32)DataBinder.Eval(e.Row.DataItem, "UserId") == Convert.ToInt32(HttpContext.Current.User.Identity.Name))
            {
                e.Row.Cells[5].Visible = true;

            }
            else
            {
                e.Row.Cells[5].Visible = false;
            }

        }
    }


    protected void GridViewZadania_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Int32 StatusColor = (Int32)DataBinder.Eval(e.Row.DataItem, "TaskStatusId");
            DateTime StatusDate = (DateTime)DataBinder.Eval(e.Row.DataItem, "RequiredEndDate");

            if (StatusColor == 1 && StatusDate < DateTime.Now)
            {
                e.Row.Cells[0].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[1].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[2].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[3].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[4].BackColor = System.Drawing.Color.Yellow;
                

            }
        } 
    }
    protected void GridViewCustomer_Part_IndexSet_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string value4 = Request.QueryString["Id"];
        if (value4!="")
        {
            Response.Redirect("~/NotificationSet/Details.aspx?Id=" + value4 + "&note=delete");
        }

    }
}
