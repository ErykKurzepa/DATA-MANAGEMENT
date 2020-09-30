<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="ZakonczPowiadomienie.aspx.cs" Inherits="Edit" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Zakończenie powiadomienia</h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Edit"
                OnItemCommand="FormView1_ItemCommand" RenderOuterTable="false">
                <EditItemTemplate>
                    <table id="detailsTable" class="DDDetailsTable" cellpadding="6">
                       <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="Czy na pewno chcesz zakończyć to powiadomienie?"/>
            </td>
</tr>
<tr class="td">
     <td class="DDLightHeader">
                <asp:Label runat="server" Text="Id powiadomienia:"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Id" />
                 </td>
    </tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł powiadomienia:"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Name" />
                 </td>
</tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:LinkButton runat="server" CommandName="Update" Text="Zakończ" />
                                <asp:LinkButton runat="server" CommandName="Cancel" Text="Anuluj" CausesValidation="false" />
                             
                            </td>
                        </tr>
                    </table>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    
                    <div class="DDNoItem">No such item.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true" OnUpdating="Insert_fields"  OnUpdated="FormView1_ItemUpdated"/>

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

