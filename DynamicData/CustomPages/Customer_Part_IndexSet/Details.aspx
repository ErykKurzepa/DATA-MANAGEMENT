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
            <asp:DataControlReference ControlID="FormView3" />
        </DataControls>
    </asp:DynamicDataManager>

    <asp:EntityDataSource ID="EDS2" runat="server"
        ContextTypeName="YASA_PL.YASA_PLContainer"
        EntitySetName="Customer_PartSet"
        EnableUpdate="true"
        Include="Customer_Part_Index,Customer"
        Where="it.Id=ANYELEMENT(SELECT VALUE s.Customer_PartId FROM Customer_Part_IndexSet AS s WHERE s.ID=@CPartIndexId)">
        <WhereParameters>
            <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
        </WhereParameters>
    </asp:EntityDataSource>

    <asp:FormView runat="server" ID="FormView3" DataSourceID="EDS2" RenderOuterTable="false">
                <ItemTemplate>
                     <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O DETALU"/>
            </td>
</tr>
          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Klient"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Customer"/>
                 </td></tr>
                      <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer detalu<br> (numer rysunku)"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Number"/>
                 </td>
</tr>     
       <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa detalu"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name"/>
                 </td></tr>
                                            
                    <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis detalu"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Description" />
                 </td></tr>

        
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
                <asp:Label runat="server" Text="INFORMACJE O REWIZJI"/>
            </td>
</tr>
          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer rewizji"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Index_Number"/>
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kontruktor rewizji"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Index_designer"/>
                 </td>
          </tr>
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Index_description" />
                 </td>
          </tr>
  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data rewizji"/>
            </td>
            <td style="width:250px">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Index_date" />
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data otrzymania"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Date_received" />

                 </td>
          </tr>

 <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE EDYCJI REWIZJI"/>
            </td>
</tr>
          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Modyfikował"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="User" />
                 </td>
               <td style="width:50px" class="DDLightHeader">
                 <asp:Label runat="server" Text="Dnia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Date_created_modified"/>
                 </td>

          </tr>
                          <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:DynamicHyperLink ID="EditDynamicHyperLink" runat="server" Action="Edit" Text="Edytuj" /> | &nbsp;
                                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandName="Delete" Text="Usuń"
                                    OnClientClick='return confirm("Are you sure you want to delete this item?");' /> | &nbsp;
                                <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl='<%#"~/Customer_PartSet/Details.aspx?Id=" + Eval("Customer_PartId") %>'>Pokaż Wszystkie Rewizje</asp:DynamicHyperLink> | &nbsp;
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



            <h2 class="DDSubHeader">Powiązane pliki</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" EnableDelete="true"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Customer_FilesSet"
                Where="it.Customer_Part_IndexId=@CPartIndexId">
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
                     <asp:DynamicField DataField="Description" />
                 
                    <asp:DynamicField DataField="filePath" />
                    <asp:DynamicField DataField="Typ" />
                    <asp:DynamicField DataField="File_size" />
                    
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


               <br />
            <h2 class="DDSubHeader">Powiązane technologie</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewTechnologie" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource2" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="TechnologySet"
                Where="it.Customer_Part_IndexId=@CPartIndexId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewTechnologie" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource2" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="Id" />
                     <asp:DynamicField DataField="Name" />
                    <asp:DynamicField DataField="Description" />
                  
                    <asp:TemplateField ItemStyle-Width="80px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink ID="TechnologyListDetails" runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink ID="TechnologyListDetailsArrow"  runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


            <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink4" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj technologię</asp:HyperLink>
            </div>


        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

