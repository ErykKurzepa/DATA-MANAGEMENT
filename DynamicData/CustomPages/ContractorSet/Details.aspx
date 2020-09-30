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
    <h2 class="DDSubHeader">Dostawca:</h2>

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
                <asp:Label runat="server" Text="DANE PODSTAWOWE"/>
            </td>
</tr>
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer ID"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl10" DataField="Id" />
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa firmy"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" />
                 </td>
</tr>
                              <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Branża"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Contractor_category" DataField="Contractor_category" />
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis firmy"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Description" />
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
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Country" />
                 </td>
</tr>
                        <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Miasto"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="City" />
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kod pocztowy"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Postal_Code" />
                 </td>
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Address" />
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
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Phone" />
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres e-mail"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Email" />
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Strona WWW"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Www" />
                 </td>
</tr>

       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                <asp:DynamicHyperLink ID="EditDynamicHyperLink" runat="server" Action="Edit" Text="Edytuj"  />  | &nbsp;
                               
                                 <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl="~/ContractorSet/List.aspx">Pokaż Wszystkich Dostawców</asp:DynamicHyperLink> | &nbsp;
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

           
            <h2 class="DDSubHeader">Pracownicy</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Contractor_ContactSet"
                Where="it.ContractorId=@CPartId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EDS1" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="F_Name" />
                      <asp:DynamicField DataField="L_Name" />
                      <asp:DynamicField DataField="Department" />
                       <asp:DynamicField DataField="Email" />
                      <asp:DynamicField DataField="Position" />
                      <asp:DynamicField DataField="W_Phone_No"/>
                      <asp:DynamicField DataField="M_Phone_No" />
                 
                  
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
                <asp:HyperLink ID="HyperLink1" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj pracownika</asp:HyperLink>
            </div>



        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

