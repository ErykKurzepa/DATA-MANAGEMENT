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
        if (e.CommandName == DataControlCommands.CancelCommandName)
        {
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
        YASA_PL.Tool_Document_File c = (YASA_PL.Tool_Document_File)e.Entity;
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
        Session["Record_Info"] = "Edycja pliku zakończona poprawnie";

        string ToolId = ((YASA_PL.Tool_Document_File)e.Entity).ToolId.ToString();
        if (ToolId!="")
        Response.Redirect("~/ToolSet/Details.aspx?Id=" + ToolId);
        
        
        string Tool_ElementId = ((YASA_PL.Tool_Document_File)e.Entity).Tool_ElementId.ToString();
        if (Tool_ElementId!="")
        Response.Redirect("~/Tool_ElementSet/Details.aspx?Id=" + Tool_ElementId);

            //Response.Redirect(table.ListActionPath);
    }

}
