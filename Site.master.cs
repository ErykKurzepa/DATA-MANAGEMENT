using System.ComponentModel.DataAnnotations;
using System.Web.DynamicData;
using System.Web.UI.WebControls;
using System.Web.Security;
using System;
using System.Web.UI;
using System.Security.Principal;
using System.Configuration;
using System.Collections.Generic;
using System.Web;
using System.Text.RegularExpressions;
using System.Linq;
using System;
using System.Net.Mail;



public partial class Site : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (HttpContext.Current.User.Identity.IsAuthenticated)
        {
            String[] UserData;



            UserData = LookupUserDataFor(HttpContext.Current.User.Identity.Name);

                if (UserData == null || UserData.Length<1)
            {
                FormsAuthentication.SignOut();
                Response.Redirect(Request.Path);
            }
            else
            {
                HyperLink1.NavigateUrl = "Users/Details.aspx?Id=" + HttpContext.Current.User.Identity.Name;
                UserLabel.Text = " " + UserData[0] + " " + UserData[1] + " ";
            
            }
        }
        else
        {
              UserLabel.Text = "Nieznany użytkownik";
        }

        //footertext.Text = "  copyright © 2014 Przemysław Kurzępa";

    }





    protected void Button1_Click(object sender, System.EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect(Request.Path);
    }

    string[] LookupUserDataFor(string userName)
    {
        List<string> UserData = new List<string>();
        YASA_PL.YASA_PLContainer x = new YASA_PL.YASA_PLContainer();

        var users = from u in x.Users
                    select u;
        foreach (var item in users)
        {
            if (item.Id.ToString() == userName)
            {
                UserData.Add(item.F_Name);
                UserData.Add(item.L_Name);
                UserData.Add(item.DepartmentId.ToString());
                return UserData.ToArray();
            }
        }



        return UserData.ToArray();
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        
        try
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("przemek.kurzepa@gmail.com");
            mail.To.Add("przemek.kurzepa@gmail.com");
            mail.Subject = "Test Mail";
            mail.Body = "This is for testing SMTP mail from GMAIL";

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
    
    }
}

