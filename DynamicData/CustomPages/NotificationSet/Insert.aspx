<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Insert.aspx.cs" Inherits="Insert" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Dodanie rekordu do tabeli <%= table.DisplayName %></h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Insert"
                OnItemCommand="FormView1_ItemCommand"  RenderOuterTable="false">
                <InsertItemTemplate>
                    <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O POWIADOMIENIU"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Typ powiadomienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="NotyficationType" Mode="Insert"/>
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł powiadomienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Name" Mode="Insert"/>
                 </td>
</tr>
 
                     
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis "/>
            </td>
            <td colspan="1" style="width:450px">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Description" Mode="Insert"/>
               </td><td style="width:250px" >Przeprowadzić pełną analizę działań, które należy przeprowadzić w celu wdrożenia powiadomienia.
                 </td>
</tr>

                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana data wdrożenia powiadomienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="RequiredEndDate" Mode="Insert"/>
               </td>
</tr>
                               <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="POWIĄZANIA"/>
            </td>
</tr>

                         <tr class="td">
                         <td class="DDLightHeader">
                <asp:Label ID="PowiadomienieLabel" runat="server" Text="Detal:"/>
            </td>
            <td colspan="1">
                <asp:DynamicControl runat="server" ID="DynamicControl4" DataField="Customer_Part" Mode="Insert"/>
                 </td>
                               <td class="DDLightHeader">
                <asp:Label ID="Label1" runat="server" Text="Produkt:"/>
            </td>
            <td colspan="1">
                <asp:DynamicControl runat="server" ID="DynamicControl5" DataField="Customer_Product" Mode="Insert"/>
                 </td>

                         </tr>  
       
       
       
       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:LinkButton runat="server" CommandName="Insert" Text="Dodaj" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Cancel" Text="Anuluj" CausesValidation="false" /> | &nbsp;
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableInsert="true" OnInserting="Insert_fields" OnInserted="FormView1_ItemInserted"/>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

