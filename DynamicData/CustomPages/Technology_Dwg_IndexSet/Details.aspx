<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Details.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>
     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader">Rekord z tabeli <%= table.DisplayName %></h2>

    <asp:DynamicDataManager runat="server">
        <DataControls>
            <asp:DataControlReference ControlID="FormView2" />
        </DataControls>
    </asp:DynamicDataManager>

    <asp:EntityDataSource ID="EDS2" runat="server"
        ContextTypeName="YASA_PL.YASA_PLContainer"
        EntitySetName="Technology_DwgSet"
        EnableUpdate="true"
        Include="Technology_Dwg_Index"
        Where="it.Id=ANYELEMENT(SELECT VALUE s.Technology_DwgId FROM Technology_Dwg_IndexSet AS s WHERE s.ID=@CPartIndexId)">
        <WhereParameters>
            <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
        </WhereParameters>
    </asp:EntityDataSource>


     <asp:FormView runat="server" ID="FormView2" DataSourceID="EDS2" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                        <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O REWIZJI RYSUNKU TECHNOLOGICZNEGO"/>
            </td>
</tr>
                               <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer Id instrukcji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Id"/>
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł instrukcji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name"/>
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis instrukcji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description"/>
                 </td>
</tr>
                   
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
       
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O REWIZJI INSTRUKCJI PRACY"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Index_number"/>
                 </td>
</tr>

                                    <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Autor rewizji"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="User_approved"/>
                 </td>
            <td style="width:100px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data rewizji"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Date_approved" />
                 </td>
</tr>

<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Index_description" />
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
                                    OnClientClick='return confirm("Are you sure you want to delete this item?");' /> | &nbsp;
                                   <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl='<%#"~/Technology_DwgSet/Details.aspx?Id=" + Eval("Technology_DwgId") %>'>Pokaż Wszystkie Rewizje</asp:DynamicHyperLink> | &nbsp;
                                   </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">No such item.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>

          
            <h2 class="DDSubHeader">Powiązane pliki</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Technology_Dwg_FilesSet"
                Where="it.Technology_Dwg_IndexId=@CPartIndexId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_Index_Files" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="File_title" />
                    <asp:DynamicField DataField="File_name_number" />
    <asp:DynamicField DataField="filePath" />
                    <asp:DynamicField DataField="File_size" />

                     <asp:TemplateField HeaderText="Opis" ItemStyle-Width="65%">
    <ItemTemplate> 
      <asp:Label ID="OpisId" Runat="Server" 
                Text='<%#((Eval("Description")).ToString().Replace(Environment.NewLine, "<br/>"))%>' />
    </ItemTemplate>
  </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="80px">
                        <ItemTemplate>
                            <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" ID="FileEdit"
                            /> | &nbsp;<asp:LinkButton runat="server" CommandName="Delete" Text="Usuń" ID="FileDelete"
                                OnClientClick='return confirm("Are you sure you want to delete this item?");'
                            />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                  <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


              <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj plik</asp:HyperLink>
            </div>


           


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

