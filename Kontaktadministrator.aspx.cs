using System;
using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Net.Mail;

public partial class _Default : System.Web.UI.Page {

    protected void Wyslij(object sender, EventArgs e)
    {
        Label1.Text = "Wysyłanie wiadomości";
        try
            
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("przemek.kurzepa@gmail.com");
            mail.To.Add("przemek.kurzepa@gmail.com");
            mail.Subject = "YASA PDM - zgłoszenie: " + temat.Text;

            mail.Body = "Od: " + F_Name.Text + " " + L_Name.Text;
            mail.Body += "\n";
            mail.Body += "Tel: " + telefon.Text + ", Email: " + email.Text;
            mail.Body += "\n";
            mail.Body += "Tresc: ";
            mail.Body += "\n";
            mail.Body += tresc.Text;
            SmtpServer.Port = 587;
            SmtpServer.Credentials = new System.Net.NetworkCredential("przemek.kurzepa@gmail.com", "Karolek1983");
            SmtpServer.EnableSsl = true;

            SmtpServer.Send(mail);
            //MessageBox.Show("mail Send");
        }
        catch (Exception ex)
        {
            // MessageBox.Show(ex.ToString());
        }


            Label1.Text = "Twoje zgłoszenie zostało wysłane, dziękujemy";
            tresc.Text = "";
            temat.Text = "";
            email.Text = "";
            telefon.Text = "";
            F_Name.Text = "";
            L_Name.Text = "";
             
    }

}
