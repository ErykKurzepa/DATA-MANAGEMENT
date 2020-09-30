using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;
using System.Text.RegularExpressions;
using System.Web.Security;

public partial class Details : System.Web.UI.Page {
    protected MetaTable table;
    protected MetaTable NotyficationTable;
    protected MetaTable CommentTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
        NotyficationTable = ASP.global_asax.DefaultModel.GetTable("NotificationSet");
        CommentTable = ASP.global_asax.DefaultModel.GetTable("CommentSet");

        if (Session["Record_Info"] != null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }


        string value = Request.QueryString["Id"];
        HyperLink3.NavigateUrl = "~/CommentSet/Insert.aspx?Customer_PartId=" + value;
       
    
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        EntityDataSource1.Include = NotyficationTable.ForeignKeyColumnsNames;
        EntityDataSource2.Include = CommentTable.ForeignKeyColumnsNames;
        string value = Request.QueryString["Id"];
        HyperLink1.NavigateUrl = "~/Customer_Part_IndexSet/Insert.aspx?Customer_PartId=" + value;
        HyperLink2.NavigateUrl = "~/NotificationSet/Insert.aspx?Customer_PartId=" + value;

        #region roles
        //edytuj
        if (!(Roles.IsUserInRole("Customer_Part_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun
        if (!(Roles.IsUserInRole("Customer_Part_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
        }
        //dodaj rewizje
        if (!(Roles.IsUserInRole("Customer_Part_Insert") || Roles.IsUserInRole("Admin")))
        {
            HyperLink1.Enabled = false;
            HyperLink1.CssClass = "disabled_link";
        }

        //dodaj powiadomienie
        if (!(Roles.IsUserInRole("Notification_Insert") || Roles.IsUserInRole("Admin")))
        {
            HyperLink2.Enabled = false;
            HyperLink2.CssClass = "disabled_link";
        }

        #endregion
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void GridViewCustomer_Part_Powiadomienia_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Int32 StatusColor = (Int32)DataBinder.Eval(e.Row.DataItem, "NotificationStatusId");
            DateTime StatusDate = (DateTime)DataBinder.Eval(e.Row.DataItem, "RequiredEndDate");

            if (StatusColor == 1 && StatusDate < DateTime.Now)
            {
                string color = "#FFDBFF";

                e.Row.Cells[0].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[1].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[2].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[3].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[4].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[5].BackColor = System.Drawing.Color.FromName(color);
                e.Row.Cells[6].BackColor = System.Drawing.Color.FromName(color);
              // e.Row.Cells[7].BackColor = System.Drawing.Color.FromName(color);
            }
        } 
    }

    protected void GridViewCustomer_Part_IndexSet_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string value4 = Request.QueryString["Id"];
        if (value4 != "")
        {
            Response.Redirect("~/Customer_PartSet/Details.aspx?Id=" + value4 + "&note=delete");
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
}
