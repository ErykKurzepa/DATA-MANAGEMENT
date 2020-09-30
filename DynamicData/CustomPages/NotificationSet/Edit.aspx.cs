using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Edit : System.Web.UI.Page {
    protected MetaTable table;
   // static string prevPage = String.Empty;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        //if (!IsPostBack)
        //{
        //    prevPage = Request.UrlReferrer.ToString();
        //}
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            //Response.Redirect(table.ListActionPath);
            //Response.Redirect(prevPage);
            string value = Request.QueryString["Id"];
            if (value != null)
                Response.Redirect("~/NotificationSet/Details.aspx?Id=" + value);
        }
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
            
        }
    }

    protected void FormView1_ItemUpdated(object sender, EntityDataSourceChangedEventArgs e)
    {
        if (e.Exception == null || e.ExceptionHandled)
        {
            Session["Record_Info"] = "Edycja rekordu zakończona poprawnie";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
        }
    }



}
