using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Linq;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Data;

public partial class List : System.Web.UI.Page
{
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e)
    {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        GridView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        GridDataSource.EntityTypeFilter = table.EntityType.Name;

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Title = table.DisplayName;
        GridDataSource.Include = table.ForeignKeyColumnsNames;

        // Disable various options if the table is readonly
        if (table.IsReadOnly)
        {
            GridView1.Columns[0].Visible = false;
            GridView1.EnablePersistedSelection = false;
        }
        string cncprogram = Request.QueryString["CNC_ProgramId"];
        LinkButton2.PostBackUrl = "~/CNC_ProgramSet/Details.aspx?Id=" + cncprogram;
    }

    protected void Label_PreRender(object sender, EventArgs e)
    {
        Label label = (Label)sender;
        DynamicFilter dynamicFilter = (DynamicFilter)label.FindControl("DynamicFilter");
        QueryableFilterUserControl fuc = dynamicFilter.FilterTemplate as QueryableFilterUserControl;
        if (fuc != null && fuc.FilterControl != null)
        {
            label.AssociatedControlID = fuc.FilterControl.GetUniqueIDRelativeTo(label);
        }
    }

    protected override void OnPreRenderComplete(EventArgs e)
    {
        RouteValueDictionary routeValues = new RouteValueDictionary(GridView1.GetDefaultValues());
        base.OnPreRenderComplete(e);
    }

    protected void DynamicFilter_FilterChanged(object sender, EventArgs e)
    {
        GridView1.PageIndex = 0;
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        var selectionIds = GridView1.Rows.Cast<GridViewRow>()
            .Select(r => new
            {
                id = (int)GridView1.DataKeys[r.RowIndex][0],
                cb = (CheckBox)r.Cells[0].FindControl("checkadd")
            })
            .Where(a => a.cb.Checked)
            .Select(a => a.id)
            .ToList();

        AddSelections(selectionIds);
        string value = Request.QueryString["CNC_ProgramId"];
        Session["Record_Info"] = "Narzędzia zostały przypisane do programu";
        Response.Redirect("~/CNC_ProgramSet/Details.aspx?Id=" + value);
    }

    private void AddSelections(List<int> selectionIds)
    {
        string value = Request.QueryString["CNC_ProgramId"];

        //using (SqlConnection con = new SqlConnection("Data Source=TECHNOLOG-DELL\\SQLEXPRESS;Integrated Security=true;Initial Catalog=YASA_PL")) //praca
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString))
        {
            con.Open();

            SqlCommand cmd0 = new SqlCommand("DELETE FROM dbo.ToolCNC_ProgramSet  WHERE  [CNC_ProgramId] = (@etap)", con);
            cmd0.Parameters.AddWithValue("@etap", value);
            cmd0.CommandType = CommandType.Text;
            cmd0.ExecuteNonQuery();

            foreach (int sel in selectionIds)
            {
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO dbo.ToolCNC_ProgramSet ([CNC_ProgramId], [ToolId]) VALUES (@tool, @toolelement)", con);
                    cmd1.Parameters.AddWithValue("@tool", value);
                    cmd1.Parameters.AddWithValue("@toolelement", sel);
                    cmd1.CommandType = CommandType.Text;
                    cmd1.ExecuteNonQuery();
            }
            con.Close();

        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string value = Request.QueryString["CNC_ProgramId"];

         Label c = (Label)e.Row.FindControl("Label_id");
         if (c != null)
         {
             int sel = Convert.ToInt32(c.Text);
             using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString))
             {
                 con.Open();
                 SqlCommand cmd0 = new SqlCommand("SELECT COUNT(*) FROM dbo.ToolCNC_ProgramSet  WHERE  [CNC_ProgramId] = (@etap) AND [ToolId] = (@element)", con);
                 cmd0.Parameters.AddWithValue("@etap", value);
                 cmd0.Parameters.AddWithValue("@element", sel);
                 cmd0.CommandType = CommandType.Text;
                 int ilosc = (int)cmd0.ExecuteScalar();
                 con.Close();

                 if (ilosc != 0)
                 {
                     CheckBox cb = (CheckBox)e.Row.FindControl("checkadd");
                     cb.Checked = true;

                 }
             }
         }
    }

    protected void clear_search(object sender, EventArgs e)
    {
        TextBoxId.Text = "";
        TBSearch.Text = "";

    }
}
