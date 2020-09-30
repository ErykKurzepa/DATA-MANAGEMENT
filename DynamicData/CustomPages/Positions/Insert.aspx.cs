using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Insert : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName)
        {
   
                Response.Redirect("~/Users/List.aspx");

        }
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        string value = Request.QueryString["redirect"];
        Session["Record_Info"] = "Rekord został dodany";
        if (value == "userlist")
        {
            Response.Redirect("~/Users/List.aspx");
        }

        if (value == "adduser")
        {
            Response.Redirect("~/Users/Insert.aspx");
        }
        

    }

}
