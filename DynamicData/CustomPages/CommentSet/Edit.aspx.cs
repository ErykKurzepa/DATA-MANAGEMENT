using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;

public partial class Edit : System.Web.UI.Page {
    protected MetaTable table;
    public string redirectlink;
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

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {


            if (redirectlink!="")
            Response.Redirect(redirectlink);
        }
    }



    protected void DetailsDataSource_Inserting(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Comment c = (YASA_PL.Comment)e.Entity;
        if (c != null)
        {
            c.Date_created = DateTime.Now;
            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
            Session["Record_Info"] = "Edycja rekordu zakończona poprawnie";
            if (c.TaskId != null)
                redirectlink="~/TaskSet/Details.aspx?Id=" + c.TaskId;

            if (c.NotificationId != null)
                redirectlink = "~/NotificationSet/Details.aspx?Id=" + c.NotificationId;

            if (c.Customer_PartId != null)
                redirectlink = "~/Customer_PartSet/Details.aspx?Id=" + c.Customer_PartId;

            if (c.Customer_ProductId != null)
                redirectlink = "~/Customer_ProductSet/Details.aspx?Id=" + c.Customer_PartId;

   
        }
    }
}
