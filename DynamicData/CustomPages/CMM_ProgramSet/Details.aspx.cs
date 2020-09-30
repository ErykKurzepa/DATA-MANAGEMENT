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
    protected MetaTable IndexTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
        IndexTable = ASP.global_asax.DefaultModel.GetTable("CMM_Program_IndexSet");

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
        HyperLink2.NavigateUrl = "~/CMM_Program_IndexSet/Insert.aspx?CMM_ProgramId=" + value;

        EDS1.Include = IndexTable.ForeignKeyColumnsNames;

        //dodawanie , edycja , usuwanie - role
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("CMM_Program_Edit", "EditDynamicHyperLink", FormView1, "PROGRAMY CMM - Edycja");
        RoleChecker.RoleCheck.DetailView_Delete_RoleCheck("CMM_Program_Delete", "DeleteLinkButton", FormView1, "PROGRAMY CMM - Usuwanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("CMM_Program_Insert", HyperLink2, "PROGRAMY CMM - Dodawanie");
    
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
