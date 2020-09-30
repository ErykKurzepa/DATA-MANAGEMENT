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

        string document = Request.QueryString["Technology_SetId"];
        string document2 = Request.QueryString["Technology_IndexId"];
        Link1.PostBackUrl = "~/Technology_InstructionSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link2.PostBackUrl = "~/Technology_DwgSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link3.PostBackUrl = "~/Setup_SheetSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link4.PostBackUrl = "~/CNC_ProgramSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link5.PostBackUrl = "~/Quality_InstructionSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link6.PostBackUrl = "~/Quality_ChartSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        Link7.PostBackUrl = "~/CMM_ProgramSet/ManageSelections.aspx?Technology_SetId=" + document + "&Technology_IndexId=" + document2;
        LinkButton2.PostBackUrl = "~/Technology_IndexSet/Details.aspx?Id=" + document2;
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
        //search checked rows in  view
        var selectionIds = GridView1.Rows.Cast<GridViewRow>()
            .Select(r => new
            {
                id = (int)GridView1.DataKeys[r.RowIndex][0],
                cb = (CheckBox)r.Cells[0].FindControl("checkadd")
            })
            .Where(a => a.cb.Checked)
            .Select(a => a.id)
            .ToList();

        //search all rows in  view
        var selectionIds_Unchecked = GridView1.Rows.Cast<GridViewRow>()
           .Select(r => new
           {
               id = (int)GridView1.DataKeys[r.RowIndex][0],
               cb = (CheckBox)r.Cells[0].FindControl("checkadd"),

           })
           .Select(a => a.id)
           .ToList();

        AddSelections(selectionIds, selectionIds_Unchecked);
        string value = Request.QueryString["Technology_IndexId"];
        Session["Record_Info"] = "Dokumenty zostały przypisane do operacji";
        Response.Redirect("~/Technology_IndexSet/Details.aspx?Id=" + value);
    }

    private void AddSelections(List<int> selectionIds, List<int> selectionIds_Unchecked)
    {
        string value = Request.QueryString["Technology_SetId"];

        //using (SqlConnection con = new SqlConnection("Data Source=TECHNOLOG-DELL\\SQLEXPRESS;Integrated Security=true;Initial Catalog=YASA_PL")) //praca
        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString))
        {
            con.Open();

            // delete unchecked records
            foreach (int del_tool in selectionIds_Unchecked)
            {
                SqlCommand cmd0 = new SqlCommand("DELETE FROM dbo.Technology_StageTechnology_Dwg  WHERE  [Technology_Stage_Id] = (@etap) AND [Technology_Dwg_Id] = (@mach)", con);
                cmd0.Parameters.AddWithValue("@etap", value);
                cmd0.Parameters.AddWithValue("@mach", del_tool);
                cmd0.CommandType = CommandType.Text;
                cmd0.ExecuteNonQuery();
            }


            //add checked record 
            foreach (int sel in selectionIds)
            {
              
                    SqlCommand cmd1 = new SqlCommand("INSERT INTO dbo.Technology_StageTechnology_Dwg ([Technology_Stage_Id], [Technology_Dwg_Id]) VALUES (@tool, @toolelement)", con);
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
        string value = Request.QueryString["Technology_SetId"];

        Label c = (Label)e.Row.FindControl("Label_id");
        if (c != null)
        {
            int sel = Convert.ToInt32(c.Text);
            using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd0 = new SqlCommand("SELECT COUNT(*) FROM dbo.Technology_StageTechnology_Dwg  WHERE  [Technology_Stage_Id] = (@etap) AND [Technology_Dwg_Id] = (@element)", con);
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
