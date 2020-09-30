<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Kontaktadministrator.aspx.cs" Inherits="_Default" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="DDSubHeader">Kontakt z Administratorem</h2>

        <%--<h4 class="DDSubHeaderHelp"><b>Kontakt z administratorem systemy YASA PDM</b> </h4>--%>

    <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator"></asp:Label>
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Lista błędów: " CssClass="DDValidator" />
    <asp:RequiredFieldValidator ControlToValidate="tresc" ID="RequiredFieldValidator1" runat="server" Display="None" CssClass="DDValidator" ErrorMessage="Proszę podać treść zgłoszenia"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ControlToValidate="email" ValidationExpression="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?" ID="RegularExpressionValidator1" runat="server" Display="None" CssClass="DDValidator" ErrorMessage="Adres e-mail ma nieprawidłowy format"></asp:RegularExpressionValidator>  
       <table id="detailsTable" class="DDDetailsTable" cellpadding="6">
                

<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE ZGŁASZAJĄCEGO"/>
            &nbsp;(nie wynagane)</td>
        </tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Imię i Nazwisko:"/>
            </td>
            <td colspan="3">
                <asp:Textbox runat="server" ID="F_Name" CssClass="DDTextBox" />
            <asp:Textbox runat="server" ID="L_Name" CssClass="DDTextBox"/>
                 </td>
        </tr>

                    <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Numer telefonu"/>
            </td>
            <td>
                <asp:Textbox runat="server" ID="telefon" CssClass="DDTextBox"/>
                 </td>
</tr>
                      <tr class="td">

    <td class="DDLightHeader">
                <asp:Label runat="server" Text="Adres email"/>
            </td>
            <td> 
         <asp:Textbox  runat="server" ID="email" CssClass="DDTextBox" TextMode="Email"/>
                 </td>
        </tr>
<tr class="td">
            <td class="User_page_header" colspan="6">
                ZGŁOSZENIE</td>
        </tr>
                     <tr class="td">
    <td class="DDLightHeader">
                <asp:Label runat="server" Text="Temat"/>
            </td>
            <td> 
         <asp:Textbox  runat="server" ID="temat"  CssClass="DDTextBox" Width="265px"/>
                 </td>
        </tr>
                     <tr class="td">
    <td class="DDLightHeader">
                <asp:Label runat="server" Text="Treść"/>
            </td>
            <td> 
                <asp:Textbox runat="server" ID="tresc" TextMode="MultiLine" Height="94px" Width="268px" CssClass="DDTextBox"/>
            
                 </td>
        </tr>

           <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/></td>
        </tr>

                     <tr class="td">
          
            <td colspan="3">
                <asp:LinkButton runat="server" Text="Wyślij"  CausesValidation="true" OnClick="Wyslij" />
            
                 </td>
        </tr>
                    </table>
   
</asp:Content>
