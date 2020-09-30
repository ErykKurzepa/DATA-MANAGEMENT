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

public partial class Insert : System.Web.UI.Page {
    protected MetaTable table;


    protected void Page_Init(object sender, EventArgs e) {
        table = DynamicDataRouteHandler.GetRequestMetaTable(Context);
        FormView1.SetMetaTable(table, table.GetColumnValuesFromRoute(Context));
        DetailsDataSource.EntityTypeFilter = table.EntityType.Name;
       
    }


    protected void Page_Load(object sender, EventArgs e) {
        Title = table.DisplayName;
          }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e) {
        if (e.CommandName == DataControlCommands.CancelCommandName) {
            Response.Redirect(table.ListActionPath);
        }
    }

    protected void FormView1_ItemInserted(object sender, EntityDataSourceChangedEventArgs e) {

        YASA_PL.User c = (YASA_PL.User)e.Entity;
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
            SmtpServer.Credentials = new System.Net.NetworkCredential("przemek.kurzepa@gmail.com", "karolek1983#>");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            //MessageBox.Show("mail Send");
        }
        catch (Exception ex)
        {
            // MessageBox.Show(ex.ToString());
        } 
        
        if (e.Exception == null || e.ExceptionHandled) {
            Session["Record_Info"] = "Rekord został dodany";
            Response.Redirect(table.GetActionPath(PageAction.Details, e.Entity));
       
        }
    }



    protected void Insert_fields(object sender, EntityDataSourceChangingEventArgs e)
    {
        YASA_PL.User c = (YASA_PL.User)e.Entity;
        if (c != null)
        {
            string password = System.Web.Security.Membership.GeneratePassword(10, 2);
            c.Password=password;
            c.Date_created_modified = DateTime.Now;

            if (HttpContext.Current.User.Identity.Name!="")
            {
                c.UserId = Convert.ToInt32(HttpContext.Current.User.Identity.Name);
            }          
        }
    }

   

}
