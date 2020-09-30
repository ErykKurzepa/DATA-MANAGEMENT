﻿using System;
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

            string value = Request.QueryString["QualityDocumentationId"];
            if (value != "")
                Response.Redirect("~/QualityDocumentationSet/Details.aspx?Id=" + value);
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
        YASA_PL.QualityDocumentation_Files c = (YASA_PL.QualityDocumentation_Files)e.Entity;
        if (c != null)
        {
            c.Date_created_modified = DateTime.Now;
            if (c.filePath != null)
            {
                c.File_extension = c.filePath.Substring(c.filePath.LastIndexOf(".") + 1).ToLower();
                //add file size information
                String fileUrl = "~/qualitydocumentation_files/" + c.filePath;
                String path = Server.MapPath(fileUrl);
                System.IO.FileInfo fi = null;
                fi = new System.IO.FileInfo(path);
                c.File_size = Math.Round(Convert.ToDecimal(fi.Length / 1048576),2);
            }

        }
    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        string value = Request.QueryString["QualityDocumentationId"];
        if (value != null)
        {
            Session["Record_Info"] = "Plik został dodany";
            Response.Redirect("~/QualityDocumentationSet/Details.aspx?Id=" + value);
        }
       


    }

}



