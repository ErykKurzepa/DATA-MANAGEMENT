using System;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        
        //if (User.Identity.IsAuthenticated)
        //{
            
        //}
        
        System.Collections.IList visibleTables = ASP.global_asax.DefaultModel.VisibleTables;
      //  System.Collections.IList VisibleTables = VisibleTables.Insert(Customer_Files, );
    
       


        if (visibleTables.Count == 0) {
            throw new InvalidOperationException("There are no accessible tables. Make sure that at least one data model is registered in Global.asax and scaffolding is enabled or implement custom pages.");
        }
        //Menu1.DataSource = visibleTables;
        //Menu1.DataBind();
    }

}
