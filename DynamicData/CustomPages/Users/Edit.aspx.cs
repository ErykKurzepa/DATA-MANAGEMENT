using System;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.Expressions;
using System.Web;
using System.Text.RegularExpressions;
using System.Linq;
using System;
using System.Net.Mail;


public partial class Edit : System.Web.UI.Page {
    protected MetaTable table;

    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table);
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
    }

    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
        DetailsDataSource.Include = table.ForeignKeyColumnsNames;
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            string value = Request.QueryString["Id"];
            Response.Redirect("Details.aspx?Id=" + value);
        }
    }

    protected void FormView1_ItemUpdated(object sender, EntityDataSourceChangedEventArgs e) {


        if (e.Exception == null || e.ExceptionHandled)
        {
            Session["Record_Info"] = "Edycja rekordu zakończona poprawnie";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));

        }
    }


    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.User c = (YASA_PL.User)e.Entity;
         if (c != null)
        {
            CheckBox ChkBox = (CheckBox)FormView1.FindControl("CheckBox1");
                if (ChkBox.Checked == true)
                {
                    string password = System.Web.Security.Membership.GeneratePassword(10, 2);
                    c.Password = password;

                    try
                    {
                        MailMessage mail = new MailMessage();
                        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                        mail.From = new MailAddress("przemek.kurzepa@gmail.com");
                        mail.To.Add(c.Email);
                        mail.Subject = "YASA Technology Team - System Zarządzania Dokumentacją";
                        mail.Body = "Witamy w YASA Technology Team - System Zarządzania Dokumentacją. \n \n";
                        mail.Body += "Ten email został wysłany automatycznie w celu potwierdzenia rejestracji w systemie YASA PDM \n";
                        mail.Body += "\n";
                        mail.Body += "Twoje hasło dostępu do systemu to: " + c.Password + "\n";
                        mail.Body += "\n";
                        mail.Body += "po pierwszym zalogowaniu się do YASA PDM zaleca się zmianę hasła.";
                        mail.Body += "\n";
                        mail.Body += "Życzymy przejemnego korzystania z serwisu.";
                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("przemek.kurzepa@gmail.com", "Karolek1983");
                       SmtpServer.EnableSsl = true;
                        SmtpServer.Send(mail);
                        //MessageBox.Show("mail Send");
                    }
                    catch (Exception ex)
                    {

                      //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Nie udało się wysłać wiadomości z hasłem uzytkownika');", true);


                    } 
                
                
                }
 
             c.Date_created_modified = DateTime.Now;
               if (HttpContext.Current.User.Identity.Name != "")
               {
                   c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
               }  
        }           
    }



}
