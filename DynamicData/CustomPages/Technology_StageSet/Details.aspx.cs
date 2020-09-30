using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.SqlClient;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Details : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_PreInit(object sender, EventArgs e)
    {
        string value = Request.QueryString["Id"];

        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString))
        {
            con.Open();
            SqlCommand cmd0 = new SqlCommand("SELECT Technology_IndexId FROM dbo.Technology_StageSet  WHERE  [Id] = (@stage)", con);
            cmd0.Parameters.AddWithValue("@stage", value);
            cmd0.CommandType = CommandType.Text;
            SqlDataReader dr = cmd0.ExecuteReader();
            if (dr.Read())
            {
                String TName = dr[0].ToString();
                Response.Redirect("~/Technology_IndexSet/Details.aspx?Id=" + TName);
            }
            con.Close();
        }

        
    }

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;

    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;

      
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

}
