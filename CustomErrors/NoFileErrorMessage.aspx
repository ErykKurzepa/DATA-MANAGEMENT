<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="NoFileErrorMessage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        margin-bottom: 10px;
        font: normal normal normal large normal Trebuchet MS, Arial, sans-serif;
        color: #CC0000;
        text-align: center;
    }
    .auto-style2 {
        font-size: large;
    }
</style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   

        <h4 class="auto-style1">UWAGA:</h4>
<h4 class="auto-style1"><span class="auto-style2">NIE ZNALEZIONO PLIKU.</span></h4>
        <h4 class="DDSubHeaderosystemieh4">Jeżeli problem będzie się powtarzał: <a href="/Kontaktadministrator.aspx" class="stage_link">skontaktuj się z administratorem systemu</a> <br />
     </h4>


     <h6 class="DDSubHeaderosystemieh5"> <b>Wyjaśnienie:</b><br />  Zostałeś / Zostałaś przekierowwany na tą stronę poniewaz wybrany element nie istnieje.<br /> 
         Informacje o zaistniałym błedzie zostały zapisane w rejestrze błędów systemu.
     </h6>

 

  

</asp:Content>
