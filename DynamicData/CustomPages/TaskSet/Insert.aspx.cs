using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;

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
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void FormView1_ItemInserted(object sender, EntityDataSourceChangedEventArgs e)
    {

        if (e.Exception == null || e.ExceptionHandled)
        {

            Session["Record_Info"] = "Zadanie zostało dodane";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
        }
    }

    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Task c = (YASA_PL.Task)e.Entity;
        if (c != null)
        {
            c.TaskStatusId = 1;
            c.Date_created_modified = DateTime.Now;
            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);

        }
    }

   

}
