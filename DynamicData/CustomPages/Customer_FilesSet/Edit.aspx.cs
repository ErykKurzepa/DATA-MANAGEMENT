﻿using System;
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
           // Response.Redirect(table.ListActionPath);
            Response.Redirect(prevPage);
        }
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            if (redirectlink != "")
                Response.Redirect(redirectlink);
            else
                Response.Redirect(table.ListActionPath);
        }
    }
    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.Customer_Files c = (YASA_PL.Customer_Files)e.Entity;
        if (c!=null)
        {

            c.Date_created_modified = DateTime.Now;
            if (c.filePath!=null)
            {
                c.File_extension = c.filePath.Substring(c.filePath.LastIndexOf(".") + 1).ToLower();
                //add file size information
                String fileUrl = "~/files/" + c.filePath;
                String path = Server.MapPath(fileUrl);
                System.IO.FileInfo fi = null;
                fi = new System.IO.FileInfo(path);
                c.File_size = Math.Round(Convert.ToDecimal(fi.Length / 1048576), 2);
            }
            if (c.Customer_OrderId !=null)
                redirectlink = "~/Customer_OrderSet/Details.aspx?Id=" + c.Customer_OrderId + "&fileedited=true";
            if (c.Customer_Part_IndexId != null)
                redirectlink = "~/Customer_Part_IndexSet/Details.aspx?Id=" + c.Customer_Part_IndexId + "&fileedited=true";
            if (c.Customer_Product_IndexId != null)
                redirectlink = "~/Customer_Product_IndexSet/Details.aspx?Id=" + c.Customer_Product_IndexId + "&fileedited=true";
        }
    }

    protected void Show_Record(object sender, EntityDataSourceChangedEventArgs e)
    {
        Session["Record_Info"] = "Edycja rekordu zakończona poprawnie";
        string FileId = ((YASA_PL.Customer_Files)e.Entity).Id.ToString();
        Response.Redirect("Details.aspx?Id=" + FileId);
    }

}
