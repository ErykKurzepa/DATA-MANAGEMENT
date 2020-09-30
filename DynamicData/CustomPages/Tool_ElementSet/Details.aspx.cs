using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
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
       HyperLink2.NavigateUrl = "~/Tool_Document_FileSet/Insert.aspx?Tool_ElementId=" + value;

       //dodawanie , edycja
       RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Tool_Edit", "EditDynamicHyperLink", FormView1, "Narzędzia - Edycja");
       RoleChecker.RoleCheck.DetailView_Delete_RoleCheck("Tool_Delete", "DeleteLinkButton", FormView1, "Narzędzia - Usuwanie");
       RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Tool_Insert", HyperLink2, "Narzędzia - Dodawanie");
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
