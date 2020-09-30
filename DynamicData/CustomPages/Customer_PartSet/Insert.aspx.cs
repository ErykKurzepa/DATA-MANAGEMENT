using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;

using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections.Generic;
using System.Linq;

public partial class Insert : System.Web.UI.Page
{
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e)
    {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Title = table.DisplayName;
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == DataControlCommands.CancelCommandName)
        {
            string value1 = Request.QueryString["CustomerId"];
            if (value1 != null)
                Response.Redirect("~/CustomerSet/Details.aspx?Id=" + value1);
            else
                Response.Redirect(table.ListActionPath);
        }
    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception == null || e.ExceptionHandled)
        {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Customer_Part c = (YASA_PL.Customer_Part)e.Entity;
        if (c != null)
        {
            c.Date_created_modified = DateTime.Now;
            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);

        }

      

    }

    protected void DetailsDataSource_Inserted(object sender, System.Web.UI.WebControls.EntityDataSourceChangedEventArgs e)
    {
        if (e.Exception == null || e.ExceptionHandled)
        {
            Session["Record_Info"] = "Rekord został dodany";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
        }
    }
}
