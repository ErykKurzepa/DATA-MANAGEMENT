using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using YASA_PL;

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
        YASA_PL.Technology_Dwg_Files c = (YASA_PL.Technology_Dwg_Files)e.Entity;
        if (c!=null)
        {

            c.Date_created_modified = DateTime.Now;
            if (c.filePath!=null)
            {
                c.File_extension = c.filePath.Substring(c.filePath.LastIndexOf(".") + 1).ToLower();
                //add file size information
                String fileUrl = "~/technology_dwg_files/" + c.filePath;
                String path = Server.MapPath(fileUrl);
                System.IO.FileInfo fi = null;
                fi = new System.IO.FileInfo(path);
                c.File_size = fi.Length;
            }
      
        }
    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        string FileId = ((YASA_PL.Technology_Files)e.Entity).Technology_Instruction_IndexId.ToString();
        Session["Record_Info"] = "Edycja rekordu zakończona poprawnie";
        Response.Redirect("~/Technology_Dwg_IndexSet/Details.aspx?Id=" + FileId);
    }

}
