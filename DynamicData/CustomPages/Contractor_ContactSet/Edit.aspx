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
                <asp:Label runat="server" Text="DANE PERSONALNE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Imię"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="F_Name" Mode="Edit"/>
                 </td>
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwisko"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="L_Name" Mode="Edit"/>
                 </td>
</tr>
                       <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Firma"/>
            </td>
            <td colspan="4">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Contractor" Mode="Edit"/>
                 </td>
                           </tr>
                       <tr class="td">
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dział"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Department" Mode="Edit"/>
                 </td>
                                           <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Stanowisko"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Position" Mode="Edit"/>
                 </td>
</tr>
                                      <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dodatkowy opis"/>
            </td>
            <td colspan="6" >
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Description" Mode="Edit"/>
                 </td>
                                  
</tr>
                        <tr class="td">
            <td class="User_page_header" colspan="6">
                           <asp:Label runat="server" Text="DANE KONTAKTOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Telefon stacjonarny"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="W_Phone_No" Mode="Edit"/>
                 </td>
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Telefon komórkowy"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="M_Phone_No" Mode="Edit"/>
                 </td>
 <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="E-mail"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Email" Mode="Edit"/>
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

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

