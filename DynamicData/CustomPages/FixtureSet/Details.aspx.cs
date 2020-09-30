using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using DistiPromo.Helpers;
using System.Collections.Specialized;

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
        string value = Request.QueryString["Id"];
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        HyperLink2.NavigateUrl = "~/Fixture_Document_FileSet/Insert.aspx?FixtureId=" + value;

        //dodawanie , edycja , usuwanie - role
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Fixture_Edit", "EditDynamicHyperLink", FormView1, "PRZYRZĄDY I MASZYNY - Edycja");
        RoleChecker.RoleCheck.DetailView_Delete_RoleCheck("Fixture_Delete", "DeleteLinkButton", FormView1, "PRZYRZĄDY I MASZYNY - Usuwanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Fixture_Insert", HyperLink2, "PRZYRZĄDY I MASZYNY - Dodawanie");

        //edit and delete in gridview
        RoleChecker.RoleCheck.GridView_Edit_RoleCheck("Fixture_Edit", "FileEdit", GridViewCustomer_Part_Index_Files, "PRZYRZĄDY I MASZYNY - Edycja");
        RoleChecker.RoleCheck.GridView_Delete_RoleCheck("Fixture_Delete", "FileDelete", GridViewCustomer_Part_Index_Files, "PRZYRZĄDY I MASZYNY - Usuwanie");

    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }


    protected void GridViewCustomer_Part_Index_Files_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Label1.Text = "Plik został usunięty.";
    }
}
