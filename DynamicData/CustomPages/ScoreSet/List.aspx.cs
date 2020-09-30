using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Linq;
using System.Web.Security;

public partial class List : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        GridView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        GridDataSource.EntityTypeFilter = table.EntityType.Name;
        
        
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        GridDataSource.Include = table.ForeignKeyColumnsNames;

        // Disable various options if the table is readonly
        if (table.IsReadOnly) {
            GridView1.Columns[0].Visible = false;
            InsertHyperLink.Visible = false;
            GridView1.EnablePersistedSelection = false; 
        }
        
        //roles
        if (!(Roles.IsUserInRole("Contractor_Order_Insert") || Roles.IsUserInRole("Admin")))
        {
            InsertHyperLink.Enabled = false;
            InsertHyperLink.CssClass = "disabled_link";
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
       

   

        //cena
     var cenagrid = GridView1.Rows.Cast<GridViewRow>()
               .Select(r => new
               {
                   id = (int)GridView1.DataKeys[r.RowIndex][0],
                   cb1 = (Label)r.Cells[0].FindControl("TPrice"),
               })
               .Select(a => a.cb1.Text)
               .ToList();
     double cena = 0;
     int cenailosc = 0;
     foreach (string sel in cenagrid)
     {
         double x = Convert.ToDouble(sel);
         cena = cena + x;
         cenailosc = cenailosc + 1;
     }
     cena = Math.Round((cena / cenailosc),2);

        //jakosc
     var jakoscgrid = GridView1.Rows.Cast<GridViewRow>()
           .Select(r => new
           {
               id = (int)GridView1.DataKeys[r.RowIndex][0],
               cb2 = (Label)r.Cells[0].FindControl("TQuality"),
           })
           .Select(a => a.cb2.Text)
           .ToList();
     double jakosc = 0;
     int jakoscilosc = 0;
     foreach (string sel in jakoscgrid)
     {
         double x = Convert.ToDouble(sel);
         jakosc = jakosc + x;
         jakoscilosc = jakoscilosc + 1;
     }
     jakosc = Math.Round((jakosc / jakoscilosc),2);

        //czas
     var czasgrid = GridView1.Rows.Cast<GridViewRow>()
           .Select(r => new
           {
               id = (int)GridView1.DataKeys[r.RowIndex][0],
               cb3 = (Label)r.Cells[0].FindControl("TDelivery_time"),
           })
           .Select(a => a.cb3.Text)
           .ToList();
     double czas = 0;
     int czasilosc = 0;
     foreach (string sel in czasgrid)
     {
         double x = Convert.ToDouble(sel);
         czas = czas + x;
         czasilosc = czasilosc + 1;
     }
     czas = Math.Round((czas / czasilosc),2);

        //kontakt
     var kontaktgrid = GridView1.Rows.Cast<GridViewRow>()
           .Select(r => new
           {
               id = (int)GridView1.DataKeys[r.RowIndex][0],
               cb4 = (Label)r.Cells[0].FindControl("TContact"),
           })
           .Select(a => a.cb4.Text)
           .ToList();
     double kontakt = 0;
     int kontaktilosc = 0;
     foreach (string sel in kontaktgrid)
     {
         double x = Convert.ToDouble(sel);
         kontakt = kontakt + x;
         kontaktilosc = kontaktilosc + 1;
     }
     kontakt = Math.Round((kontakt / kontaktilosc),2);




     Label1.Text = cena.ToString();
     Label2.Text = jakosc.ToString();
     Label3.Text = czas.ToString();
     Label4.Text = kontakt.ToString();


    }

    protected void DynamicFilter_FilterChanged(object sender, EventArgs e) {
        GridView1.PageIndex = 0;
    }


    protected void Unnamed_Querying(object sender, CustomExpressionEventArgs e)
    {
        if (IsPostBack)
        {
            var compIds = Convert.ToInt32(lbContractor.SelectedValue);
            if (compIds != 0)
                e.Query = e.Query.Cast<YASA_PL.Score>().Where(
                    c => compIds == c.Contractor_Order.ContractorId);
     

        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}
