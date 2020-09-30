using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Edit : System.Web.UI.Page {
    protected MetaTable table;
    static string prevPage = String.Empty;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        if (!IsPostBack)
        {
            prevPage = Request.UrlReferrer.ToString();
        }
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            //Response.Redirect(table.ListActionPath);
            Response.Redirect(prevPage);
        }
    }

    protected void FormView1_ItemUpdated(object sender, EntityDataSourceChangedEventArgs e)
    {
        if (e.Exception == null || e.ExceptionHandled)
        {
            Session["Record_Info"] = "Zadanie zostało zakończone";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
        }
    }


    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Task c = (YASA_PL.Task)e.Entity;
        if (c != null)
        { 
            if (c.UserIdTask == Convert.ToInt32(HttpContext.Current.User.Identity.Name))
                {
                    c.TaskStatusId = 3;
                    c.EndDate = DateTime.Now;
                }
        }
    }



}
