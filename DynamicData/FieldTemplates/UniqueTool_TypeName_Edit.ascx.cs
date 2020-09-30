using System;
using System.Collections.Specialized;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Collections.Generic;
using System.Linq;


    public partial class UniqueName_EditField : System.Web.DynamicData.FieldTemplateUserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Column.MaxLength < 20)
            {
                TextBox1.Columns = Column.MaxLength;
            }
            TextBox1.ToolTip = Column.Description;
            
            SetUpValidator(RequiredFieldValidator1);
            SetUpValidator(RegularExpressionValidator1);
            SetUpValidator(DynamicValidator1);

        }





        protected override void OnDataBinding(EventArgs e)
        {
            base.OnDataBinding(e);
            if (Column.MaxLength > 0)
            {
                TextBox1.MaxLength = Math.Max(FieldValueEditString.Length, Column.MaxLength);
            }

        }

        protected override void ExtractValues(IOrderedDictionary dictionary)
        {
            dictionary[Column.Name] = ConvertEditedValue(TextBox1.Text);
        }

        public override Control DataControl
        {
            get
            {
                return TextBox1;
            }
        }

        protected void IsUserNameUnique(object sender, EventArgs e)
        {

            YASA_PL.YASA_PLContainer x = new YASA_PL.YASA_PLContainer();

            Int64 licznik = 0;
            var users = from u in x.Tool_TypeSet
                        select u;
            foreach (var item in users)
            {
                if (item.Name == TextBox1.Text)
                {
                    licznik = licznik + 1;
                }
            }
            if (licznik > 0)
            {
                RegularExpressionValidator1.ErrorMessage = "Podana nazwa rodzaju narzędzia już istnieje";
                RegularExpressionValidator1.Enabled = true;
            }
            else
            {
                RegularExpressionValidator1.Enabled = false;
            }
        }


    }