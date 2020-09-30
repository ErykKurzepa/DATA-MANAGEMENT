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
      


        //sprawdzenie czy user id zalogowany = user id przypisany do zadania 
        DynamicHyperLink UserIdZamowienie = (DynamicHyperLink)FormView1.FindControl("UserIdZamowienie");
        DynamicHyperLink ShowStatus = (DynamicHyperLink)FormView1.FindControl("ShowStatus");
        if (UserIdZamowienie.Text != HttpContext.Current.User.Identity.Name || ShowStatus.Text != "1")
        {
            Response.Redirect("../AccessDenied.aspx");
        }

    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            //Response.Redirect(table.ListActionPath);
            //Response.Redirect(prevPage);

            string value = Request.QueryString["Id"];
            if (value != null)
                Response.Redirect("~/Contractor_OrderSet/Details.aspx?Id=" + value);
            else
                Response.Redirect(table.ListActionPath);


        }
    }

    protected void FormView1_ItemUpdated(object sender, EntityDataSourceChangedEventArgs e)
    {
        if (e.Exception == null || e.ExceptionHandled)
        {
            Session["Record_Info"] = "Pomyślnie potwierdzono realizację zamówienia";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
        }
    }


    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Contractor_Order c = (YASA_PL.Contractor_Order)e.Entity;
        if (c != null)
        { 
            if (c.UserId == Convert.ToInt32(HttpContext.Current.User.Identity.Name))
                {
                    c.Order_StatusId = 2;
                }
        }
    }



}
