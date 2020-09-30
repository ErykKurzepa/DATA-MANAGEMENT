using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PasswordField : System.Web.DynamicData.FieldTemplateUserControl
{
    protected override void OnDataBinding(EventArgs e)
    {
       
    }

    public override Control DataControl
    {
        get
        {
            return Literal1;
        }
    }

}