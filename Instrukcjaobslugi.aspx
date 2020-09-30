<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Instrukcjaobslugi.aspx.cs" Inherits="_Default" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="DDSubHeader">Instrukcja obsługi Systemu</h2>

      <%--  <h4 class="DDSubHeaderHelp"><b>LEOTEK Produkt Data Management System – instrukcja obsługi</b> </h4>--%>



     <h6 class="DDSubHeaderHelpcontent"> YASA Produkt Data Management System (zwane dalej YASA PDM) ma na celu zarządzanie dokumentacją technologiczną firmy YASA. 
System YASA PDM zbudowany jest w oparciu o bazę danych Microsoft SQL Server, język Microsoft C# (C sharp) oraz platformę Microsoft ASP.NET.
Dostęp do systemu konktrolowany jest przez proces logowania. Aby uzysskać dostęp należy posiadać użykownik musi posiadać konto w systemie YASA PDM,  które ma w szczególności za zadanie regulować  uprawnienia pracownika do poszczególnych funkcji systemu.
Do zakładania nowych kont w systemie mają uprawnienia kierownicy działów oraz administrator systemu.</h6><br />
         <p class="DDSubHeaderHelpcontent">1.	Utworzenie nowego konta użytkownika systemu YASA PDM    </p>

         <h6 class="DDSubHeaderHelpsubcontent">
         
Z menu głównego wybieramy zakładkę „Użytkownicy”. Następnie klikamy podmenu „Wszyscy użytkownicy”:<br />

     
    <asp:Image ID="Image1" ImageUrl="~/Instrukcjaobslugi/allusers.png" runat="server" />
</h6>

</asp:Content>
