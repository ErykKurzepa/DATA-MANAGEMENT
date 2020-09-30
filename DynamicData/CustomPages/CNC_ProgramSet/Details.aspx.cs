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
        IndexTable = ASP.global_asax.DefaultModel.GetTable("CNC_Program_IndexSet");

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
        HyperLink2.NavigateUrl = "~/CNC_Program_IndexSet/Insert.aspx?CNC_ProgramId=" + value;
        HyperLink3.NavigateUrl = "~/CNC_SubprogramSet/Insert.aspx?CNC_ProgramId=" + value;
         HyperLink4.NavigateUrl = "~/ToolSet/ManageSelections.aspx?CNC_ProgramId=" + value;
      
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
        //dodaj rewizje , podprogram , narzedzia
        if (!(Roles.IsUserInRole("CNC_Program_Insert") || Roles.IsUserInRole("Admin")))
        {
            HyperLink2.Enabled = false;
            HyperLink2.CssClass = "disabled_link";
            HyperLink3.Enabled = false;
            HyperLink3.CssClass = "disabled_link";
            HyperLink4.Enabled = false;
            HyperLink4.CssClass = "disabled_link";
        }

        //przegladaj narzedzia
        if (!(Roles.IsUserInRole("Tool_List") || Roles.IsUserInRole("Admin")))
        {
            foreach (GridViewRow row in GridView2.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    DynamicHyperLink ToolListView = (DynamicHyperLink)row.FindControl("ToolListView");
                    ToolListView.Enabled = false;
                    ToolListView.CssClass = "disabled_link";
                    ToolListView.Action = "";
                    DynamicHyperLink ToolListView1 = (DynamicHyperLink)row.FindControl("ToolListView1");
                    ToolListView1.Enabled = false;
                    ToolListView1.CssClass = "disabled_link";
                    ToolListView1.Action = "";
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

}
