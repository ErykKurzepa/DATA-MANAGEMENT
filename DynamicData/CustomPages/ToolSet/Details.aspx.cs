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
    //protected MetaTable IndexTable;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
        //IndexTable = ASP.global_asax.DefaultModel.GetTable("Tool_ElementSet");

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
         HyperLink1.NavigateUrl = "~/Tool_Document_FileSet/Insert.aspx?ToolId=" + value;
         //DynamicHyperLink55.NavigateUrl = "~/CNC_MachineSet/ManageToolSelections.aspx?ToolId=" + value;

        //dodawanie , edycja
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Tool_Edit","EditDynamicHyperLink", FormView1,"Narzędzia - Edycja");
        RoleChecker.RoleCheck.DetailView_Delete_RoleCheck("Tool_Delete", "DeleteLinkButton", FormView1, "Narzędzia - Usuwanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Tool_Insert", HyperLink1, "Narzędzia - Dodawanie");

        //details in gridviews
        RoleChecker.RoleCheck.GridView_Details_RoleCheck("CNC_Program_List", "ViewCNCProgramDetails", GridViewCustomer_Part_IndexSet, "Programy CNC - Przeglądanie");
        RoleChecker.RoleCheck.GridView_Details_RoleCheck("CNC_Program_List", "ViewCNCProgramDetailsArrow", GridViewCustomer_Part_IndexSet, "Programy CNC - Przeglądanie");
       

        //edit and delete in gridview
        RoleChecker.RoleCheck.GridView_Edit_RoleCheck("Tool_Edit", "FileEdit", GridViewCustomer_Part_Index_Files, "Narzędzia - Edycja");
        RoleChecker.RoleCheck.GridView_Delete_RoleCheck("Tool_Delete", "FileDelete", GridViewCustomer_Part_Index_Files, "Narzędzia - Usuwanie");

        //wybieranie elementow narzedzia
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Tool_Insert", "ChooseToolElements", FormView1, "Narzędzia - Dodawanie");
        //wybieranie maszyny
        RoleChecker.RoleCheck.DetailView_Edit_RoleCheck("Tool_Insert", "ChooseMachines", FormView1, "Narzędzia - Dodawanie");

        
    }

   

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
