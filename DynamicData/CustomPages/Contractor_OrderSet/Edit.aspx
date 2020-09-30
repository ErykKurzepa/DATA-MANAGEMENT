<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Edit.aspx.cs" Inherits="Edit" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Edycja rekordu w tabeli <%= table.DisplayName %></h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="Lista błędów" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Edit"
                OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated" RenderOuterTable="false">
                <EditItemTemplate>
                        <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O ZAMÓWIENIU"/>
            </td>
</tr>
                                 <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id zamówienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Id"/>
                 </td>
</tr>
                           <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł zamówienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Title" Mode="Edit"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Treść zamówienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description" Mode="Edit"/>
                 </td>
</tr>
  <tr class="td">
            <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Rodzaj artykułów"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Article_type" Mode="Edit"/>
                 </td>
</tr>                       
                         
                         
                         <tr class="td">

                           <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Cena [PLN]"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Total_price" Mode="Edit"/>
                 </td></tr>

                          <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O DOSTAWCY"/>
            </td>
</tr>
                           <tr class="td">
            <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Dostawca"/>
            </td>
            <td style="width:350px">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Contractor" Mode="Edit"/>
                 </td>

            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer oferty"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Contractor_offer_name_number" Mode="Edit"/>
                 </td>
</tr>
                               <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O ZAMAWIAJĄCYM"/>
            </td>
</tr>
                           <tr class="td">
            <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Zamawiający"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="User"/>
                 </td>
 <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Data zamówienia"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Date_created_modified"/>
                 </td>
          
</tr>
      <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O REALIZACJI ZAMÓWIENIA"/>
            </td>
</tr>
                           <tr class="td">
            <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana data dostawy"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Date_required" Mode="Edit"/>
                <asp:DynamicHyperLink Visible="false" runat="server" ID="UserIdZamowienie" DataField="UserId"></asp:DynamicHyperLink>
                 <asp:DynamicHyperLink Visible="false" runat="server" ID="ShowStatus" DataField="Order_StatusId"></asp:DynamicHyperLink>
                 </td>
                        

          
</tr>
       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:LinkButton runat="server" CommandName="Update" Text="Zastosuj" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Cancel" Text="Anuluj" CausesValidation="false" /> | &nbsp;
                             
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    
                    <div class="DDNoItem">No such item.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true" OnUpdated="FormView1_ItemUpdated"/>

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

