using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
using YASA_PL;
using System.Collections.Generic;
using System.Collections;

public partial class ForeignKeyList_EditField : System.Web.DynamicData.FieldTemplateUserControl
{
    protected void Page_Load(object sender, EventArgs e) {
        if (lb1.Items.Count == 0)
        {
            if (Mode == DataBoundControlMode.Insert || !Column.IsRequired) {
                lb1.Items.Add(new ListItem("[Not Set]", ""));
            }
            
            PopulateListControl(lb1);
        }

        SetUpValidator(RequiredFieldValidator1);
        SetUpValidator(DynamicValidator1);
    }

    protected void PopulateListControl(ListControl listControl)
    {
        IQueryable<YASA_PL.Customer_Contact> customers =
             (IQueryable<YASA_PL.Customer_Contact>)ForeignKeyColumn.ParentTable.GetQuery();
        var query2 = customers.ToList().Select(p => new
             {
                 p.Id,
                 itemText = string.Format("{0} {1} - {2}", p.F_Name, p.L_Name, p.Customer.Name)
             });
        
         lb1.DataSource = query2;
         lb1.DataTextField = "itemText";
         lb1.DataValueField = "Id";
         lb1.DataBind();

    }

    protected override void OnDataBinding(EventArgs e) {
        base.OnDataBinding(e);

        string selectedValueString = GetSelectedValueString();
        ListItem item = lb1.Items.FindByValue(selectedValueString);
        if (item != null) {
            lb1.SelectedValue = selectedValueString;
        }

    
    }

    protected override void ExtractValues(IOrderedDictionary dictionary) {
        // If it's an empty string, change it to null
        string value = lb1.SelectedValue;
        if (String.IsNullOrEmpty(value)) {
            value = null;
        }

        ExtractForeignKey(dictionary, value);
    }

    public override Control DataControl {
        get {
            return lb1;
        }
    }

    protected void lb1_DataBound(object sender, EventArgs e)
    {
        // value gotten via a query string as below 
        string value = Request.QueryString[Column.Name];

        //// value gotten via metadata 
        //string value = Column.GetDefaultValue();

        if (this.Mode == DataBoundControlMode.Insert && !string.IsNullOrEmpty(value))
        {
            ListItem item = this.lb1.Items.FindByValue(value);
            if (item != null)
            {
                item.Selected = true;
            }
        }

    }

}
