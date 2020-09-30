using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using YASA_PL;
using System.Web;

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

            string value1 = Request.QueryString["Customer_Part_IndexId"];
            if (value1 != null)
            {
                Response.Redirect("~/Customer_Part_IndexSet/Details.aspx?Id=" + value1);
            }
            string value2 = Request.QueryString["Customer_Product_IndexId"];
            if (value2 != null)
            {
                Response.Redirect("~/Customer_Product_IndexSet/Details.aspx?Id=" + value2);
            }


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
        YASA_PL.Customer_Files c = (YASA_PL.Customer_Files)e.Entity;
        if (c != null)
        {

            c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
            c.Date_created_modified = DateTime.Now;
            if (c.filePath != null)
            {
                c.File_extension = c.filePath.Substring(c.filePath.LastIndexOf(".") + 1).ToLower();
                //add file size information
                String fileUrl = "~/files/" + c.filePath;
                String path = Server.MapPath(fileUrl);
                System.IO.FileInfo fi = null;
                fi = new System.IO.FileInfo(path);
                c.File_size = Math.Round(Convert.ToDecimal(fi.Length / 1048576.0), 2);

            }

        }
    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        Session["Record_Info"] = "Rekord został dodany";
        string value1 = Request.QueryString["Customer_Part_IndexId"];
        if (value1 != null)
        {
            Response.Redirect("~/Customer_Part_IndexSet/Details.aspx?Id=" + value1);
        }
        string value2 = Request.QueryString["Customer_Product_IndexId"];
        if (value2 != null)
        {
            Response.Redirect("~/Customer_Product_IndexSet/Details.aspx?Id=" + value2);
        }


    }

}




