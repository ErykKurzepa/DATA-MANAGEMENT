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
    protected MetaTable IndexTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
        IndexTable = ASP.global_asax.DefaultModel.GetTable("Setup_Sheet_IndexSet");

        if (Session["Record_Info"]!=null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }
        
      
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        string value = Request.QueryString["Id"];
        HyperLink2.NavigateUrl = "~/Setup_Sheet_IndexSet/Insert.aspx?Setup_SheetId=" + value;
        EDS1.Include = IndexTable.ForeignKeyColumnsNames;
        #region roles
        //edytuj 
        if (!(Roles.IsUserInRole("CNC_Program_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun 
        if (!(Roles.IsUserInRole("CNC_Program_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
        }
        //dodaj rewizje 
        if (!(Roles.IsUserInRole("CNC_Program_Insert") || Roles.IsUserInRole("Admin")))
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

}
