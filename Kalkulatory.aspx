<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Kalkulatory.aspx.cs" Inherits="_Default" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h4 class="DDSubHeaderHelp"><b>Kalkulator parametrów frezowania</b> </h4>


  <table id="detailsTable" class="DDDetailsTable" cellpadding="6">
                

<tr class="td">
            <td class="User_page_header" colspan="6">
                DANE NARZĘDZIA</td>
        </tr>
 <tr class="td">
            <td class="DDLightHeader">
                Średnica nadzędzia D[mm]</td>
            <td colspan="3">
                <asp:Textbox runat="server" ID="srednica"  CssClass="DDTextBox" TextMode="Number" OnTextChanged="calculate"/>
                 </td>
        </tr>

                    <tr class="td">
            <td class="DDLightHeader">
                Prędkość skrawania [m/min]</td>
            <td>
                <asp:Textbox runat="server" ID="predkosc"  CssClass="DDTextBox" TextMode="Number" OnTextChanged="calculate"/>
                 </td>
</tr>
                      <tr class="td">

    <td class="DDLightHeader">
                Ilość zębów Z</td>
            <td> 
         <asp:Textbox  runat="server" ID="ilzebow"  CssClass="DDTextBox" TextMode="Number" OnTextChanged="calculate"/>
                 </td>
        </tr>
               <tr class="td">

    <td class="DDLightHeader">
                Posuw na ząb Fz[mm]</td>
            <td> 
         <asp:Textbox  runat="server" ID="poszab"  CssClass="DDTextBox" TextMode="Number" OnTextChanged="calculate"/>
                 </td>
        </tr>
<tr class="td">
            <td class="User_page_header" colspan="6">
                WYNIKI</td>
        </tr>
                     <tr class="td">
    <td class="DDLightHeader">
                Obroty [n/min]</td>
            <td> 
         <asp:Textbox  runat="server" ID="obroty"  CssClass="DDTextBox" ReadOnly="true"/>
                 </td>
        </tr>
                     <tr class="td">
    <td class="DDLightHeader">
                Posuw [mm/min]</td>
            <td> 
         <asp:Textbox  runat="server" ID="posuw"  CssClass="DDTextBox" ReadOnly="true"/>
            
                 </td>
        </tr>
                     <tr class="td">
          
            <td colspan="3">
                <asp:LinkButton runat="server" Text="Oblicz"  OnClick="calculate" />
            
                 </td>
        </tr>
                    </table>

</asp:Content>
