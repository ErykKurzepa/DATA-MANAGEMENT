using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Integer_EditField : System.Web.DynamicData.FieldTemplateUserControl {
    protected void Page_Load(object sender, EventArgs e) {
        TextBox1.ToolTip = Column.Description;

        SetUpValidator(RequiredFieldValidator1);
        SetUpValidator(RegularExpressionValidator1);
        SetUpValidator(DynamicValidator1);

    }
    
    protected override void ExtractValues(IOrderedDictionary dictionary) {
        dictionary[Column.Name] = ConvertEditedValue(TextBox1.Text);
    }

    public override Control DataControl {
        get {
            return TextBox1;
        }
    }

    protected void IsNumberCorrect(object sender, EventArgs e)
    {
        int n;
bool isNumeric = int.TryParse(TextBox1.Text.ToString(), out n);

  
        //sprawdzenienie czy wystepuja same liczby
        if (!isNumeric)
        {
            RegularExpressionValidator1.ErrorMessage = "Numer telefonu może zawierać wyłącznie liczby";
            RegularExpressionValidator1.Enabled = true;
        }
        else
        {
            RegularExpressionValidator1.Enabled = false;
        }


    }
}
