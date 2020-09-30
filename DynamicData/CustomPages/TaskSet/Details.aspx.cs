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
using System.Collections.Generic;
using YASA_PL;


public partial class Details : System.Web.UI.Page {
    protected MetaTable table;
    protected MetaTable CommentTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        CommentTable = ASP.global_asax.DefaultModel.GetTable("CommentSet");
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;

        if (Session["Record_Info"] != null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }


        string value = Request.QueryString["Id"];
        HyperLink1.NavigateUrl = "~/CommentSet/Insert.aspx?TaskId=" + value;



    
    
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;

        EDS1.Include = CommentTable.ForeignKeyColumnsNames;


          LinkButton ZakonczZadanie1 = (LinkButton)FormView1.FindControl("ZakonczZadanie");
        string value4 = Request.QueryString["Id"];
        ZakonczZadanie1.PostBackUrl = "~/TaskSet/EditZakoncz.aspx?Id=" + value4;

        LinkButton AnulujZadanie1 = (LinkButton)FormView1.FindControl("AnulujZadanie");
        AnulujZadanie1.PostBackUrl = "~/TaskSet/EditAnuluj.aspx?Id=" + value4;


        //linki zakonczi anuluj zadanie
        LinkButton AnulujZadanie = (LinkButton)FormView1.FindControl("AnulujZadanie");
        LinkButton ZakonczZadanie = (LinkButton)FormView1.FindControl("ZakonczZadanie");
        //wartosci z formularza:
        DynamicHyperLink UserIdZakoncz = (DynamicHyperLink)FormView1.FindControl("UserIdZakoncz");
        DynamicHyperLink UserIdAnuluj = (DynamicHyperLink)FormView1.FindControl("UserIdAnuluj");
        //status
        DynamicHyperLink ShowStatus = (DynamicHyperLink)FormView1.FindControl("ShowStatus");


        if (!(UserIdAnuluj.Text == HttpContext.Current.User.Identity.Name && ShowStatus.Text == "1"))
        {
             AnulujZadanie.Enabled = false;
            AnulujZadanie.CssClass = "disabled_link";
            AnulujZadanie.OnClientClick = "";
            AnulujZadanie.CommandName = "";
            AnulujZadanie.ToolTip = "Zadanie może być anulowane jedynie przez użytkownika który je utworzył";
        }
          

        if (!(UserIdZakoncz.Text == HttpContext.Current.User.Identity.Name && ShowStatus.Text == "1"))
        {
            ZakonczZadanie.Enabled = false;
            ZakonczZadanie.CssClass = "disabled_link";
            ZakonczZadanie.OnClientClick = "";
            ZakonczZadanie.CommandName = "";
            ZakonczZadanie.ToolTip = "Zadanie może być zakończone jedynie przez użytkownika odpowiedzialnego za zadanie";
        }

        if ((ShowStatus.Text == "3"))
        {
            AnulujZadanie.ToolTip = "Zadanie zakończone - brak możliwości edycji";
            ZakonczZadanie.ToolTip = "Zadanie zakończone - brak możliwości edycji";
        }


        #region roles
        //edytuj 
        if (!(Roles.IsUserInRole("Task_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun 
        if (!(Roles.IsUserInRole("Task_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
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
                e.Row.Cells[5].Visible=true;
               
            }
              else
            {
                e.Row.Cells[5].Visible = false;
            }

        }
    }


    protected void GridViewCustomer_Part_IndexSet_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        string value4 = Request.QueryString["Id"];
        if (value4 != "")
        {
            Response.Redirect("~/TaskSet/Details.aspx?Id=" + value4 + "&note=delete");
        }

    }
}
