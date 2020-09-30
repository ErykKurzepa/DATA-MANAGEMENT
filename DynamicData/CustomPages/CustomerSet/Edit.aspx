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
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Edit"
                OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated" RenderOuterTable="false">
                <EditItemTemplate>
                    <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE PODSTAWOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa firmy"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" Mode="Edit"/>
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis firmy"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Description" Mode="Edit"/>
                 </td>
</tr>
     <tr class="td">
            <td class="User_page_header" colspan="6">
                     <asp:Label runat="server" Text="DANE ADRESOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Państwo"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Country1" Mode="Edit"/>
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Miasto"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="City" Mode="Edit"/>
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kod pocztowy"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Postal_Code" Mode="Edit"/>
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Address" Mode="Edit"/>
                 </td>
</tr>
      <tr class="td">
            <td class="User_page_header" colspan="6">
                     <asp:Label runat="server" Text="DANE KONTAKTOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer telefonu"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Phone" Mode="Edit"/>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres e-mail"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Email" Mode="Edit"/>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Strona WWW"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Www" Mode="Edit"/>
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

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true" OnUpdated="DetailsDataSource_Updated" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

