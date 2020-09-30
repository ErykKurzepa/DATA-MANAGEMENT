using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;

public partial class Details : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
      

        if (Session["Record_Info"] != null)
        {
            Label1.Text = Session["Record_Info"].ToString();
            Session["Record_Info"] = "";
        }
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
        string value = Request.QueryString["Id"];
        HyperLink2.NavigateUrl = "~/Technology_StageSet/Insert.aspx?Technology_IndexId=" + value;

        #region roles
        //edytuj 
        if (!(Roles.IsUserInRole("Technology_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun 
        if (!(Roles.IsUserInRole("Technology_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
        }
        //dodaj operacje 
        if (!(Roles.IsUserInRole("Technology_Insert") || Roles.IsUserInRole("Admin")))
        {
            HyperLink2.Enabled = false;
            HyperLink2.CssClass = "disabled_link";
        }

        //status
        DynamicHyperLink DynamicHyperLink1 = (DynamicHyperLink)FormView1.FindControl("DynamicHyperLink1");
        DynamicHyperLink EditDynamicHyperLink1 = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
        LinkButton DeleteLinkButton1 = (LinkButton)FormView1.FindControl("DeleteLinkButton");
        DynamicHyperLink EditOperation1 = (DynamicHyperLink)FormView1.FindControl("EditOperation");
        LinkButton DeleteOperation1 = (LinkButton)FormView1.FindControl("DeleteOperation");
        HyperLink WybierzDokumentacje1 = (HyperLink)FormView1.FindControl("WybierzDokumentacje");
        

        Label ApprovedByLabel = (Label)FormView1.FindControl("ApprovedByLabel");
        if (!(ApprovedByLabel.Text == ""))
        {
            Label ZatwierdzenieLB = (Label)FormView1.FindControl("ZatwierdzenieLB"); // status zatwierdzenia
            ZatwierdzenieLB.Text = "zatwierdzone";
           //link: zatwierdz rewizję
            DynamicHyperLink1.Enabled = false;
            DynamicHyperLink1.CssClass = "disabled_link";
            DynamicHyperLink1.Action = "";
            DynamicHyperLink1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            //link: edytuj rewizję
            EditDynamicHyperLink1.Enabled = false;
            EditDynamicHyperLink1.CssClass = "disabled_link";
            EditDynamicHyperLink1.Action = "";
            EditDynamicHyperLink1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            //link: usuń rewizję
            DeleteLinkButton1.Enabled = false;
            DeleteLinkButton1.CssClass = "disabled_link";
            DeleteLinkButton1.OnClientClick = "";
            DeleteLinkButton1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            //link: edytuj operacje
          //  EditOperation1.Enabled = false;
           // EditOperation1.CssClass = "disabled_link";
          //  EditOperation1.Action = "";
          //  EditOperation1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            //link: usuń operację
           // DeleteOperation1.Enabled = false;
           // DeleteOperation1.CssClass = "disabled_link";
           // DeleteOperation1.OnClientClick = "";
          //  DeleteOperation1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            //link: wybierz dokumentację
           // WybierzDokumentacje1.Enabled = false;
           // WybierzDokumentacje1.CssClass = "disabled_link";
           // WybierzDokumentacje1.NavigateUrl = "";
           // WybierzDokumentacje1.ToolTip = "Brak możliwości edycji - rewizja zatwierdzona";
            
        }

        if (!(Roles.IsUserInRole("Technology_Insert") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink1.Enabled = false;
            DynamicHyperLink1.CssClass = "disabled_link";
            DynamicHyperLink1.Action = "";
            DynamicHyperLink1.ToolTip = "Wymagane uprawnienia: edycja";
        }

        #endregion
    
        
        
    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void rptItems_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            //edytuj
            if (!(Roles.IsUserInRole("Technology_Edit") || Roles.IsUserInRole("Admin")))
            {
                DynamicHyperLink EditOperation = e.Item.FindControl("EditOperation") as DynamicHyperLink;
                    EditOperation.Enabled = false;
                    EditOperation.CssClass = "disabled_Stage_link";
                    EditOperation.Action = "";
            }
            //usun
            if (!(Roles.IsUserInRole("Technology_Delete") || Roles.IsUserInRole("Admin")))
            {
                LinkButton DeleteOperation = e.Item.FindControl("DeleteOperation") as LinkButton;
                DeleteOperation.Enabled = false;
                DeleteOperation.CssClass = "disabled_Stage_link";
                DeleteOperation.OnClientClick = "";
                DeleteOperation.CommandName = "";
            }
            // wybierz dokumentacje
                 if (!(Roles.IsUserInRole("Technology_Insert") || Roles.IsUserInRole("Admin")))
            {
                HyperLink WybierzDokumentacje = e.Item.FindControl("WybierzDokumentacje") as HyperLink;
                    WybierzDokumentacje.Enabled = false;
                    WybierzDokumentacje.CssClass = "disabled_Stage_link";
                    WybierzDokumentacje.ToolTip = "Wymagane uprawnienia: Technologia - dodaj";
            }
        }
    }

}
