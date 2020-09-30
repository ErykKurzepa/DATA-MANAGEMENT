<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Login.aspx.cs" Inherits="Login" %>


 <asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <div style="width:100%">
        <br /><br />
       

    <table class="DDDetailsTable" style="border:0; background-color:none; align-content:center; text-align:center; width:100%">
        <tbody>
            <tr>
                <td>
                   <h3>
                       <asp:Image ID="Image2" runat="server" s ImageUrl="~/images/logo.png" />
            
                   </h3>
                    <p style="language:pl;line-height:normal;margin-top:0pt;margin-bottom:0pt;
margin-left:0in;text-align:center;direction:ltr;unicode-bidi:embed;mso-line-break-override:
none;word-break:normal;punctuation-wrap:hanging">
                        <span style="font-size:50.0pt;
font-family:Calibri;mso-ascii-font-family:Calibri;mso-fareast-font-family:+mn-ea;
mso-bidi-font-family:+mn-cs;mso-fareast-theme-font:minor-fareast;mso-bidi-theme-font:
minor-bidi;color:#04617B;mso-font-kerning:12.0pt;language:pl;font-weight:bold;
mso-style-textfill-type:solid;mso-style-textfill-fill-color:#04617B;mso-style-textfill-fill-alpha:
100.0%">SYSTEMY BAZODANOWE</span></p>
                    <h3>
Witamy serdecznie w demonstracyjnej wersji Bazodanowego Systemu Zarządzania Dokumentacją Technologiczną<br />
            
                   </h3>  <br />
        W celu zalogowania się do systemu proszę posłużyć się kontem testowym:<br />
                    </td></tr>
            <tr>
                <td style="color: #839ce7">
        Login: test.user@test.user<br />
  Hasło: test.user<br />
            <br />
                </td>
            </tr>
        </tbody>
    </table>


        <table class="DDDetailsTable" style="margin-left:auto;margin-right:auto">
             <tr class="td">
                <td colspan="5">
                    <asp:Label ID="LoginInfo" runat="server" Text="Nie jesteś zalogowany" style="font-weight: 700"></asp:Label></td>
                  </tr>
            <tr class="td">
                <td>Adres e-mail:</td>
                <td> <asp:TextBox ID="UserNameTB" runat="server"></asp:TextBox></td>
                  <td>Hasło:</td>
                <td> <asp:TextBox TextMode="Password"  ID="PasswordTB" runat="server"></asp:TextBox></td>
                 <td>
                     
                      <asp:Button ID="Button1" runat="server" Text="Zaloguj" OnClick="Button1_Click" />

                 </td>
            </tr>
            
            <tr class="td">
                <td colspan="5">
                    <asp:Label ID="LoginMessage" runat="server" Text="Zaloguj się w celu oglądania zawartości"></asp:Label></td>
                  </tr>
        </table>
        </div>

    <div>
 

        

    </div>

</asp:Content>

