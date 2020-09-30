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
        HyperLink2.NavigateUrl = "~/Quality_Instruction_FilesSet/Insert.aspx?Quality_Instruction_IndexId=" + value;

        //dodawanie , edycja , usuwanie - role
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Quality_Edit", "EditDynamicHyperLink", FormView1, "DOKUMENTY KONTROLI JAKOŚCI - Edycja");
        RoleChecker.RoleCheck.DetailView_Delete_RoleCheck("Quality_Delete", "DeleteLinkButton", FormView1, "DOKUMENTY KONTROLI JAKOŚCI - Usuwanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Quality_Insert", HyperLink2, "DOKUMENTY KONTROLI JAKOŚCI - Dodawanie");

        //edit and delete in gridview
        RoleChecker.RoleCheck.GridView_Edit_RoleCheck("Quality_Edit", "FileEdit", GridViewCustomer_Part_Index_Files, "DOKUMENTY KONTROLI JAKOŚCI - Edycja");
        RoleChecker.RoleCheck.GridView_Delete_RoleCheck("Quality_Delete", "FileDelete", GridViewCustomer_Part_Index_Files, "DOKUMENTY KONTROLI JAKOŚCI - Usuwanie");

    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
