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
            Response.Redirect(prevPage);
        }
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Score c = (YASA_PL.Score)e.Entity;
        if (c != null)
        {
            c.Date_created_modified = DateTime.Now;
            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);

        }
    }


    protected void DetailsDataSource_Updating(object sender, EntityDataSourceChangingEventArgs e)
    {

    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        string FileId = ((YASA_PL.Score)e.Entity).Contractor_OrderId.ToString();
        Session["Record_Info"] = "Edycja oceny zakończona poprawnie";
        Response.Redirect("~/Contractor_OrderSet/Details.aspx?Id=" + FileId);
    }
}
