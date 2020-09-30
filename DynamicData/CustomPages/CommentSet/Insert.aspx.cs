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

            string value = Request.QueryString["TaskId"];
            if (value != null)
                Response.Redirect("~/TaskSet/Details.aspx?Id=" + value);

            string value2 = Request.QueryString["NotificationId"];
            if (value2 != null)
                Response.Redirect("~/NotificationSet/Details.aspx?Id=" + value2);

            string value3 = Request.QueryString["Customer_PartId"];
            if (value3 != null)
                Response.Redirect("~/Customer_PartSet/Details.aspx?Id=" + value3);

            string value4 = Request.QueryString["Customer_ProductId"];
            if (value4 != null)
                Response.Redirect("~/Customer_ProductSet/Details.aspx?Id=" + value4);

            Response.Redirect(table.ListActionPath);
        }
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {

            Session["Record_Info"] = "Notatka została dodana";
            string value = Request.QueryString["TaskId"];
            if (value != null)
                Response.Redirect("~/TaskSet/Details.aspx?Id=" + value);

            string value2 = Request.QueryString["NotificationId"];
            if (value2 != null)
                Response.Redirect("~/NotificationSet/Details.aspx?Id=" + value2);

            string value3 = Request.QueryString["Customer_PartId"];
            if (value3 != null)
                Response.Redirect("~/Customer_PartSet/Details.aspx?Id=" + value3);

            string value4 = Request.QueryString["Customer_ProductId"];
            if (value4 != null)
                Response.Redirect("~/Customer_ProductSet/Details.aspx?Id=" + value4);
            
            
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void DetailsDataSource_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Comment c = (YASA_PL.Comment)e.Entity;
        if (c != null)
        {
            c.Date_created = DateTime.Now;
            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);

        }
    }
}
