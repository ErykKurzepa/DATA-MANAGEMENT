using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using Microsoft.Office;
using System.Data.SqlClient;
using System.Data;
using System.Web.Security;
using System.Web;


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

        string value4 = Request.QueryString["Id"];

        LinkButton ZakonczZamowienie = (LinkButton)FormView1.FindControl("ZakonczZamowienie");
        ZakonczZamowienie.PostBackUrl = "~/Contractor_OrderSet/EditZakoncz.aspx?Id=" + value4;
        LinkButton OcenZamowienie = (LinkButton)FormView1.FindControl("OcenZamowienie");
        OcenZamowienie.PostBackUrl = "~/ScoreSet/Insert.aspx?Contractor_OrderId=" + value4;
        LinkButton EdytujZamowienie = (LinkButton)FormView1.FindControl("EdytujZamowienie");
        EdytujZamowienie.PostBackUrl = "~/Contractor_OrderSet/Edit.aspx?Id=" + value4;

        //wartosci z formularza:
        DynamicHyperLink UserIdZamowienie = (DynamicHyperLink)FormView1.FindControl("UserIdZamowienie");

        //status
        DynamicHyperLink ShowStatus = (DynamicHyperLink)FormView1.FindControl("ShowStatus");


        if ((UserIdZamowienie.Text != HttpContext.Current.User.Identity.Name || ShowStatus.Text != "1"))
        {
            ZakonczZamowienie.Enabled = false;
            ZakonczZamowienie.CssClass = "disabled_link";
            ZakonczZamowienie.OnClientClick = "";
            ZakonczZamowienie.CommandName = "";
            ZakonczZamowienie.ToolTip = "Zamówienie może być zakończone jedynie przez użytkownika, który utworzył zamówienie";

            EdytujZamowienie.Enabled = false;
            EdytujZamowienie.CssClass = "disabled_link";
            EdytujZamowienie.OnClientClick = "";
            EdytujZamowienie.CommandName = "";
            EdytujZamowienie.ToolTip = "Zamówienie może być zakończone jedynie przez użytkownika, który utworzył zamówienie";
        }

        if ((ShowStatus.Text == "2"))
        {
            ZakonczZamowienie.Enabled = false;
            ZakonczZamowienie.CssClass = "disabled_link";
            ZakonczZamowienie.OnClientClick = "";
            ZakonczZamowienie.CommandName = "";
            ZakonczZamowienie.ToolTip = "Zamówienie zakończone - brak możliwości edycji";

            EdytujZamowienie.Enabled = false;
            EdytujZamowienie.CssClass = "disabled_link";
            EdytujZamowienie.OnClientClick = "";
            EdytujZamowienie.CommandName = "";
            EdytujZamowienie.ToolTip = "Zamówienie zakończone - brak możliwości edycji";
        }







        #region roles
        //edytuj 
        if (!(Roles.IsUserInRole("Contractor_Order_Edit") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink EditDynamicHyperLink = (DynamicHyperLink)FormView1.FindControl("EditDynamicHyperLink");
            EditDynamicHyperLink.Enabled = false;
            EditDynamicHyperLink.CssClass = "disabled_link";
            EditDynamicHyperLink.Action = "";
        }
        //usun 
        if (!(Roles.IsUserInRole("Contractor_Order_Delete") || Roles.IsUserInRole("Admin")))
        {
            LinkButton DeleteLinkButton = (LinkButton)FormView1.FindControl("DeleteLinkButton");
            DeleteLinkButton.Enabled = false;
            DeleteLinkButton.CssClass = "disabled_link";
            DeleteLinkButton.OnClientClick = "";
            DeleteLinkButton.CommandName = "";
        }
        //ocen zamowienie
        if (!(Roles.IsUserInRole("Contractor_Order_Insert") || Roles.IsUserInRole("Admin")))
        {
            DynamicHyperLink DynamicHyperLink1 = (DynamicHyperLink)FormView1.FindControl("DynamicHyperLink1");
            DynamicHyperLink1.Enabled = false;
            DynamicHyperLink1.CssClass = "disabled_link";
            DynamicHyperLink1.Action = "";
        }
        //edytuj ocene
        if (!(Roles.IsUserInRole("Contractor_Order_Edit") || Roles.IsUserInRole("Admin")))
        {
            foreach (GridViewRow row in GridViewCustomer_Part_Index_Files.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    DynamicHyperLink FileEdit = row.FindControl("FileEdit") as DynamicHyperLink;
                    FileEdit.Enabled = false;
                    FileEdit.CssClass = "disabled_link";
                    FileEdit.Action = "";
                }
            }
        }
        //usun ocene
        if (!(Roles.IsUserInRole("Contractor_Order_Delete") || Roles.IsUserInRole("Admin")))
        {
            foreach (GridViewRow row in GridViewCustomer_Part_Index_Files.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    LinkButton FileDelete = row.FindControl("FileDelete") as LinkButton;
                    FileDelete.Enabled = false;
                    FileDelete.CssClass = "disabled_link";
                    FileDelete.OnClientClick = "";
                    FileDelete.CommandName = "";
                }
            }
        }
        #endregion

    }

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e) {
        if (e.Exception == null || e.ExceptionHandled) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void Create_document(object sender, EventArgs e)
    {
        string value = Request.QueryString["Id"];

        //create word document
        //OBJECT OF MISSING "NULL VALUE"
        Object oMissing = System.Reflection.Missing.Value;

        //OBJECTS OF FALSE AND TRUE
        Object oTrue = true;
        Object oFalse = false;
        int iTotalFields = 0;
        //CREATING OBJECTS OF WORD AND DOCUMENT
        Microsoft.Office.Interop.Word.Application oWord = new Microsoft.Office.Interop.Word.Application();
        Microsoft.Office.Interop.Word.Document oWordDoc = new Microsoft.Office.Interop.Word.Document();

        //SETTING THE VISIBILITY TO TRUE
        oWord.Visible = true;

        //THE LOCATION OF THE TEMPLATE FILE ON THE MACHINE
        //Object oTemplatePath = "C:\\YASA_PL_07_07_2014--\\dokumenty_dodatkowe\\zamowienie.doc";  //praca
        //Object oTemplatePath = "C:\\Users\\LEOTEC\\Documents\\Visual Studio 2013\\WebSites\\YASA_PL_04_07_2014--\\dokumenty_dodatkowe\\zamowienie.doc"; //dom
        Object oTemplatePath = (System.IO.Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "dokumenty_dodatkowe/zamowienie.doc"));

        //ADDING A NEW DOCUMENT FROM A TEMPLATE
        oWordDoc = oWord.Documents.Add(ref oTemplatePath, ref oMissing, ref oMissing, ref oMissing);
     //   string custom_con_string = "Data Source=TECHNOLOG-DELL\\SQLEXPRESS;Integrated Security=true;Initial Catalog=YASA_PL";




        using (SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["custom_connection_YASA_PLContainer"].ConnectionString)) //praca
        //using (SqlConnection con = new SqlConnection("Data Source=LEOTEC-KOMPUTER\\ENOVIA_DB;Integrated Security=true;Initial Catalog=YASA_PL")) //dom
        {
            con.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT Id,Title,Description, Date_created_modified, Date_required, ContractorId, UserId, Contractor_offer_name_number FROM Contractor_OrderSet where Id=@username", con);
            cmd1.Parameters.AddWithValue("@username", value);
            cmd1.CommandType = CommandType.Text;
            YASA_PL.Contractor_Order c = new YASA_PL.Contractor_Order();

            using (SqlDataReader rdr = cmd1.ExecuteReader())
            {
                if (rdr.HasRows)
                {
                    rdr.Read(); // get the first row

                    c.Id = rdr.GetInt32(0);
                    c.Title = rdr.GetString(1);
                    c.Description = rdr.GetString(2);
                    c.Date_created_modified = rdr.GetDateTime(3);
                    c.Date_required = rdr.GetDateTime(4);
                    c.ContractorId = rdr.GetInt32(5);
                    c.UserId = rdr.GetInt32(6);
                    c.Contractor_offer_name_number = rdr.GetString(7);
                }
            }

            SqlCommand cmd2 = new SqlCommand("SELECT Id,Name,Address, City, Postal_Code, Phone, Email, Www, CountryId FROM ContractorSet where Id=@ContractorId", con);
            cmd2.Parameters.AddWithValue("@ContractorId", c.ContractorId);
            cmd2.CommandType = CommandType.Text;
            YASA_PL.Contractor c2 = new YASA_PL.Contractor();

            using (SqlDataReader rdr2 = cmd2.ExecuteReader())
            {
                if (rdr2.HasRows)
                {
                    rdr2.Read(); // get the first row

                    c2.Id = rdr2.GetInt32(0);
                    c2.Name = rdr2.GetString(1);
                    c2.Address = rdr2.GetString(2);
                    c2.City = rdr2.GetString(3);
                    c2.Postal_Code = rdr2.GetString(4);
                    c2.Phone = rdr2.GetString(5);
                    c2.Email = rdr2.GetString(6);
                    c2.Www = rdr2.GetString(7);
                    c2.CountryId = rdr2.GetInt32(8);
                }
            }

            SqlCommand cmd3 = new SqlCommand("SELECT Id,F_Name,L_Name, PositionId, DepartmentId, Email, W_Phone_No, M_Phone_No FROM Users where Id=@UserId", con);
            cmd3.Parameters.AddWithValue("@UserId", c.UserId);
            cmd3.CommandType = CommandType.Text;
            YASA_PL.User c3 = new YASA_PL.User();

            using (SqlDataReader rdr3 = cmd3.ExecuteReader())
            {
                if (rdr3.HasRows)
                {
                    rdr3.Read(); // get the first row

                    c3.Id = rdr3.GetInt32(0);
                    c3.F_Name = rdr3.GetString(1);
                    c3.L_Name = rdr3.GetString(2);
                    c3.PositionId = rdr3.GetInt32(3);
                    c3.DepartmentId = rdr3.GetInt32(4);
                    c3.Email = rdr3.GetString(5);
                    c3.W_Phone_No = rdr3.GetString(6);
                    c3.M_Phone_No = rdr3.GetString(7);
                }
            }

            SqlCommand cmd4 = new SqlCommand("SELECT Id, Name FROM Departments where Id=@DepartmentId", con);
            cmd4.Parameters.AddWithValue("@DepartmentId", c3.DepartmentId);
            cmd4.CommandType = CommandType.Text;
            YASA_PL.Department c4 = new YASA_PL.Department();

            using (SqlDataReader rdr4 = cmd4.ExecuteReader())
            {
                if (rdr4.HasRows)
                {
                    rdr4.Read(); // get the first row

                    c4.Id = rdr4.GetInt32(0);
                    c4.Name = rdr4.GetString(1);
                }
            }

            SqlCommand cmd5 = new SqlCommand("SELECT Id, Name FROM Countries where Id=@CountryId", con);
            cmd5.Parameters.AddWithValue("@CountryId", c2.CountryId);
            cmd5.CommandType = CommandType.Text;
            YASA_PL.Department c5 = new YASA_PL.Department();

            using (SqlDataReader rdr5 = cmd5.ExecuteReader())
            {
                if (rdr5.HasRows)
                {
                    rdr5.Read(); // get the first row

                    c5.Id = rdr5.GetInt32(0);
                    c5.Name = rdr5.GetString(1);
                }
            }


          

            foreach (Microsoft.Office.Interop.Word.Field myMergeField in oWordDoc.Fields)
            {
                iTotalFields++;
                Microsoft.Office.Interop.Word.Range rngFieldCode = myMergeField.Code;
                String fieldText = rngFieldCode.Text;

                // ONLY GETTING THE MAILMERGE FIELDS
                if (fieldText.StartsWith(" MERGEFIELD"))
                {
                    // THE TEXT COMES IN THE FORMAT OF
                    // MERGEFIELD  MyFieldName  \\* MERGEFORMAT
                    // THIS HAS TO BE EDITED TO GET ONLY THE FIELDNAME "MyFieldName"
                    Int32 endMerge = fieldText.IndexOf("\\");
                    Int32 fieldNameLength = fieldText.Length - endMerge;
                    String fieldName = fieldText.Substring(11, endMerge - 11);

                    // GIVES THE FIELDNAMES AS THE USER HAD ENTERED IN .dot FILE
                    fieldName = fieldName.Trim();

                    // **** FIELD REPLACEMENT IMPLEMENTATION GOES HERE ****//
                    // THE PROGRAMMER CAN HAVE HIS OWN IMPLEMENTATIONS HERE
                    if (fieldName == "Id")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Id.ToString()); }

                    if (fieldName == "dostawca_tresc_zam")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Description.ToString()); }

                    if (fieldName == "tytul")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Title.ToString()); }

                    if (fieldName == "data")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Date_created_modified.ToShortDateString().ToString()); }

                    if (fieldName == "datadostawy")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Date_required.ToShortDateString().ToString()); }

                    if (fieldName == "nr_oferty")
                    { myMergeField.Select(); oWord.Selection.TypeText(c.Contractor_offer_name_number.ToString()); }

                    if (fieldName == "dostawca_nazwa")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.Name.ToString()); }

                    if (fieldName == "dostawca_adres")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.Address.ToString()); }

                    if (fieldName == "dostawca_kod")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.Postal_Code.ToString()); }

                    if (fieldName == "dostawca_miasto")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.City.ToString()); }

                    if (fieldName == "dostawca_tel")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.Phone.ToString()); }

                    if (fieldName == "dostawca_email")
                    { myMergeField.Select(); oWord.Selection.TypeText(c2.Email.ToString()); }

                    if (fieldName == "zamawiajacy__imie")
                    { myMergeField.Select(); oWord.Selection.TypeText(c3.F_Name.ToString()); }

                    if (fieldName == "zamawiajacy_nazwisko")
                    { myMergeField.Select(); oWord.Selection.TypeText(c3.L_Name.ToString()); }

                    if (fieldName == "user_tel")
                    { myMergeField.Select(); oWord.Selection.TypeText(c3.W_Phone_No.ToString()); }

                    if (fieldName == "user_tel_mobile")
                    { myMergeField.Select(); oWord.Selection.TypeText(c3.M_Phone_No.ToString()); }

                    if (fieldName == "user_email")
                    { myMergeField.Select(); oWord.Selection.TypeText(c3.Email.ToString()); }

                    if (fieldName == "zamawiajacy_stanowisko")
                    { myMergeField.Select(); oWord.Selection.TypeText(c4.Name.ToString()); }

                    if (fieldName == "dostawca_panstwo")
                    { myMergeField.Select(); oWord.Selection.TypeText(c5.Name.ToString()); }

                }
            }
        }
    }

}
