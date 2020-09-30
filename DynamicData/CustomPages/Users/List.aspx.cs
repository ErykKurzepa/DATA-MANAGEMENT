using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
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
        HyperLink2.NavigateUrl = "~/Positions/Insert.aspx?redirect=userlist";
        HyperLink1.NavigateUrl = "~/Departments/Insert.aspx?redirect=userlist";

        // Disable various options if the table is readonly
        if (table.IsReadOnly) {
            GridView1.Columns[0].Visible = false;
            InsertHyperLink.Visible = false;
            GridView1.EnablePersistedSelection = false;
        }


        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Users_Insert", InsertHyperLink, "UŻYTKOWNICY - Dodawanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Users_Insert", HyperLink1, "UŻYTKOWNICY - Dodawanie");
        RoleChecker.RoleCheck.ListView_Insert_RoleCheck("Users_Insert", HyperLink2, "UŻYTKOWNICY - Dodawanie");


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
