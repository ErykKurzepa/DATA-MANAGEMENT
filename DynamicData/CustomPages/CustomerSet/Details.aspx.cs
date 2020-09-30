using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Details : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;

        if (Session["Record_Info"] != null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }



        
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        string value = Request.QueryString["Id"];
        HyperLink1.NavigateUrl = "~/Customer_ContactSet1/Insert.aspx?CustomerId=" + value;

        #region roles
        //edytuj klienta
        if (!(Roles.IsUserInRole("Customer_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun klienta
        if (!(Roles.IsUserInRole("Customer_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
        }
        //pokaz detale
          if (!(Roles.IsUserInRole("Customer_Part_List") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink DetaleDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("DetaleDynamicHyperLink");
            DetaleDynamicHyperLink.Enabled = false;
            DetaleDynamicHyperLink.CssClass = "disabled_link";
        }

          //dodaj pracownika
          if (!(Roles.IsUserInRole("Customer_Insert") || Roles.IsUserInRole("Admin")))
          {
              HyperLink1.Enabled = false;
              HyperLink1.CssClass = "disabled_link";
          }
        
    #endregion
        
    
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
