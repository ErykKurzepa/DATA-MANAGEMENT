using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Collections.Generic;
using System.Web.Security;

public partial class List : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        GridView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        GridDataSource.EntityTypeFilter = table.EntityType.Name;

        if (Session["Record_Info"] != null)
        {
            Label4.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }
        
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Title = table.DisplayName;
        GridDataSource.Include = table.ForeignKeyColumnsNames;

        // Disable various options if the table is readonly
        if (table.IsReadOnly) 
        {
            GridView1.Columns[0].Visible = false;
            InsertHyperLink.Visible = false;
            GridView1.EnablePersistedSelection = false;
        }

        //roles
        if (!(Roles.IsUserInRole("Contractor_Order_Insert") || Roles.IsUserInRole("Admin")))
        {
            InsertHyperLink.Enabled = false;
            InsertHyperLink.CssClass = "disabled_link";
            HyperLink2.Enabled = false;
            HyperLink2.CssClass = "disabled_link";
        }

        



    }

    protected void Label_PreRender(object sender, EventArgs e) {
        Label label = (Label)sender;
        DynamicFilter dynamicFilter = (DynamicFilter)label.FindControl("DynamicFilter");
        QueryableFilterUserControl fuc = dynamicFilter.FilterTemplate as QueryableFilterUserControl;
        if (fuc != null && fuc.FilterControl != null) {
            label.AssociatedControlID = fuc.FilterControl.GetUniqueIDRelativeTo(label);
        }
    }

    protected override void OnPreRenderComplete(EventArgs e) {
        RouteValueDictionary routeValues = new RouteValueDictionary(GridView1.GetDefaultValues());
        InsertHyperLink.NavigateUrl = table.GetActionPath(PageAction.Insert, routeValues);
        base.OnPreRenderComplete(e);

        var selectionIds = GridView1.Rows.Cast<GridViewRow>()
           .Select(r => new
           {
               id = (int)GridView1.DataKeys[r.RowIndex][0],
               cb = (Label)r.Cells[0].FindControl("TPrice"),
           })
           .Select(a => a.cb.Text)
           .ToList();
        double wynik = 0;
        int ilosc = 0;
        foreach (string sel in selectionIds)
        {
            double x = Convert.ToDouble(sel);
            wynik = wynik + x;
            ilosc = ilosc + 1;
        }
        Label1.Text = ilosc.ToString();
        Label2.Text = wynik.ToString();
        Label3.Text = Math.Round((wynik/ilosc),2).ToString();

    }

    protected void DynamicFilter_FilterChanged(object sender, EventArgs e) {
        GridView1.PageIndex = 0;

       
    }

    protected void clear_search(object sender, EventArgs e)
    {
        TextBoxId.Text = "";
        TBSearch.Text = "";
  
    }
}
