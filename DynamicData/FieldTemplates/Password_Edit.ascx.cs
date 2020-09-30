using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Password_EditField : System.Web.DynamicData.FieldTemplateUserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Column.MaxLength < 20)
        {
            TextBox1.Columns = Column.MaxLength;
        }

       

        TextBox1.ToolTip = Column.Description;

        CompareValidator1.ErrorMessage = "passwords must match";

        if (Mode == DataBoundControlMode.Insert)
            SetUpValidator(RequiredFieldValidator1);

        SetUpValidator(RegularExpressionValidator1);
        SetUpValidator(DynamicValidator1);
    }

    protected override void ExtractValues(IOrderedDictionary dictionary)
    {
        var original = dictionary[Column.Name];
        // make sure we have some text
        if (TextBox1.Text.Trim().Length > 0)
            dictionary[Column.Name] = ConvertEditedValue(TextBox1.Text);
        else if (HiddenField1.Value.Length > 0)
            dictionary[Column.Name] = HiddenField1.Value;

    }

    public override Control DataControl
    {
        get { return TextBox1; }
    }
}