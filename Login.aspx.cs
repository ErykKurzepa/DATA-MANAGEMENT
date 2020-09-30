using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;



public partial class Login : System.Web.UI.Page
{
    public String ID_USER;
    public int ID_USER_INT;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            // if they came to the page directly, ReturnUrl will be null.
            if (String.IsNullOrEmpty(Request["ReturnUrl"]))

            {
                /* in that case, instead of redirecting, I hide the login 
                   controls and instead display a message saying that are 
                   already logged in. */
                LoginMessage.Text = "";
                String[] UserData;
                UserData = LookupUserDataFor(HttpContext.Current.User.Identity.Name);
                LoginInfo.Text = "Jesteś zalogowany jako: " + UserData[0] + " " + UserData[1] + ". Czy chcesz zalogowac się jako inny użytkownik?";
            }
            else
            {
                Response.Redirect("~/AccessDenied.aspx");
            }
        }
    }
    public void Button1_Click(object sender, EventArgs e)
    {
        if (IsAuthenticUser(UserNameTB.Text, PasswordTB.Text))
        {

           // Global.Global_AuthenticateRequest();
          //  FormsAuthentication.RedirectFromLoginPage(UserNameTB.Text, true);
            FormsAuthentication.RedirectFromLoginPage(ID_USER, true);
          
        }
        else LoginMessage.Text = "Nieprawidłowe hasło lub nazwa użytkownika";
        LoginMessage.ForeColor = System.Drawing.Color.Red;
    }

    private bool IsAuthenticUser(string username, string password)
    {

        YASA_PL.YASA_PLContainer x = new YASA_PL.YASA_PLContainer();

            var users = from u in x.Users
                        select u;
            foreach (var item in users)
            {
                if (item.Email == username && item.Password == password )
                {
                    //HttpCookie myCookie = new HttpCookie("UserDataInfo");
                    //myCookie["Id"] = item.M_Phone_No.ToString();
                    ID_USER_INT = item.Id;
                    ID_USER = item.Id.ToString();
                    return (true);
                    

                }
            }
          
return (false);
            

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


   
}