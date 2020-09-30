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
                HeaderText="Lista błędów" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Insert"
                OnItemCommand="FormView1_ItemCommand" OnItemInserted="FormView1_ItemInserted" RenderOuterTable="false">
                <InsertItemTemplate>
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
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" Mode="Insert"/>
                 </td>
</tr>
                             <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Branża"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl10" DataField="Contractor_category" Mode="Insert"/>
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis firmy"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Description" Mode="Insert"/>
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
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Country" Mode="Insert"/>
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Miasto"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="City" Mode="Insert"/>
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kod pocztowy"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Postal_Code" Mode="Insert"/>
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Address" Mode="Insert"/>
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
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Phone" Mode="Insert"/>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres e-mail"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Email" Mode="Insert"/>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Strona WWW"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Www" Mode="Insert"/>
                 </td>
</tr>

       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                <asp:LinkButton runat="server" CommandName="Insert" Text="Dodaj" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Cancel" Text="Anuluj" CausesValidation="false" /> | &nbsp;
                                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Contractor_categorySet/Insert.aspx?redirect=insertcontractor"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" /> Dodaj branżę</asp:HyperLink> | &nbsp;
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableInsert="true" OnInserting="Insert_fields" OnInserted="DetailsDataSource_Inserted"/>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

