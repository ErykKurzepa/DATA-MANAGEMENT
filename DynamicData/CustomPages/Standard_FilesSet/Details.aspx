<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Details.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>
     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader">Rekord z tabeli <%= table.DisplayName %></h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                     <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O PLIKU"/>
            </td>
</tr>
         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Plik"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="filePath"/>
                 </td>
</tr>                
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer rewizji"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Index"/>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis zmian"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Title" />
                 </td>
</tr>

                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Rozszerzenie"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="File_extension"/>
                 </td>
                                
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Rozmiar"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="File_size"/>
                 </td>
                                         
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data utworzenia / modyfikacji"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Date_created_modified"/>
                 </td>
</tr>
                         <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="Przypisania"/>
            </td>
</tr>
                                   <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Formularz"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="FormTemplates"/>
                 </td>
</tr>

                            <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Delete" Text="Usuń"
                                    OnClientClick='return confirm("Usunąć ten rekord?");' /> | &nbsp;
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>

            <br />


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

