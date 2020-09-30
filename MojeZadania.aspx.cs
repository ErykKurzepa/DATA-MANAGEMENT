using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;


public partial class List : System.Web.UI.Page
{
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e)
    {
        table = ASP.global_asax.DefaultModel.GetTable("TaskSet");
        

        GridView1.SetMetaTable(table);
        GridDataSource.EntityTypeFilter = table.EntityType.Name;
        GridDataSource.Where = "it.UserIdTask=" + HttpContext.Current.User.Identity.Name;
        if (RadioButtonList1.SelectedValue=="1")
        {
            GridDataSource.Where = "it.TaskStatusId=1 AND it.UserIdTask=" + HttpContext.Current.User.Identity.Name;
        }
        if (RadioButtonList1.SelectedValue == "2")
        {
            GridDataSource.Where = "it.TaskStatusId=2 AND it.UserIdTask=" + HttpContext.Current.User.Identity.Name;
        }
        if (RadioButtonList1.SelectedValue == "3")
        {
            GridDataSource.Where = "it.TaskStatusId=3 AND it.UserIdTask=" + HttpContext.Current.User.Identity.Name;
        }

        string value = Request.QueryString["zadanie"];
        if (value == "dodane")
        {
            Label1.Text = "Zadanie zostało dodane";
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
        if (!(Roles.IsUserInRole("Task_Insert") || Roles.IsUserInRole("Admin")))
        {
            InsertHyperLink.Enabled = false;
            InsertHyperLink.CssClass = "disabled_link";
        }
       
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
       
        InsertHyperLink.NavigateUrl = table.GetActionPath(PageAction.Insert);
        base.OnPreRenderComplete(e);
    }

    protected void DynamicFilter_FilterChanged(object sender, EventArgs e)
    {
        GridView1.PageIndex = 0;
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Int32 StatusColor = (Int32)DataBinder.Eval(e.Row.DataItem, "TaskStatusId");
            DateTime StatusDate = (DateTime)DataBinder.Eval(e.Row.DataItem, "RequiredEndDate");

            if (StatusColor == 1 && StatusDate < DateTime.Now)
            {
                e.Row.Cells[0].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[1].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[2].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[3].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[4].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[5].BackColor = System.Drawing.Color.Yellow;
                e.Row.Cells[6].BackColor = System.Drawing.Color.Yellow;

            }
        } 
    }

    protected void clear_search(object sender, EventArgs e)
    {
        TextBoxId.Text = "";
        TBSearch.Text = "";

    }
}
