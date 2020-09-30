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
                <asp:Label runat="server" Text="INFORMACJE O TECHNOLOGII PRODUKCJI"/>
            </td>
</tr>
                                  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Id"/>
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name"/>
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description"/>
                 </td>
</tr>

                          <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="MATERIAŁY WEJŚCIOWE"/>
            </td></tr>
 
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Materiał produkcyjny"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Production_material"/>
                 </td>
</tr>
                                 <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="MATERIAŁY WYJSCIOWE"/>
            </td></tr>
 
                          <tr class="td">
                                            
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Detal"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Customer_Part_Index"/>
                 </td>
              
</tr>


 <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE EDYCJI"/>
            </td>
</tr>
                     <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dodał / Modyfikował"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl   runat="server" ID="DynamicControl8" DataField="User" />
               </td>

                             <td style="width:100px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dnia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Date_created_modified" />
               </td>
</tr>
       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" ID="EditDynamicHyperLink" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Delete" Text="Usuń" ID="DeleteLinkButton"
                                    OnClientClick='return confirm("Usunąć ten rekord?");' /> | &nbsp;
                                 <asp:DynamicHyperLink ID="ListHyperLink2" runat="server" NavigateUrl="~/TechnologySet/List.aspx">Pokaż Wszystkie Technologie Produkcji</asp:DynamicHyperLink> | &nbsp;
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


            <h2 class="DDSubHeader">Wykaz rewizji</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Technology_IndexSet"
                Where="it.TechnologyId=@CPartId2">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId2" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EDS1" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="Index_number" />
                      <asp:DynamicField DataField="Description" />
                     <asp:DynamicField DataField="User" />
                      <asp:DynamicField DataField="Date_created_modified"/>
                      <asp:DynamicField DataField="Approved_by" />
                      <asp:DynamicField DataField="Date_approved"/>
                                   
                  
                    <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


            <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rewizję</asp:HyperLink>
            </div>  



        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

