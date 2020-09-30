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
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Title"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Treść zamówienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description"/>
                 </td>
</tr>
  <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Rodzaj artykułów"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Article_type"/>
                 </td>
</tr>                       
                         
                         
                         <tr class="td">

  <td class="DDLightHeader">
                <asp:Label runat="server" Text="Cena [PLN]"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Total_price"/>
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
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Contractor"/>
                 </td>

            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer oferty"/>
            </td>
            <td>
                <asp:DynamicControl   runat="server" ID="DynamicControl2" DataField="Contractor_offer_name_number"/>
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
                <asp:DynamicControl  runat="server" ID="DynamicControl33" DataField="User"/>
                 <asp:DynamicHyperLink Visible="false" runat="server" ID="UserIdZamowienie" DataField="UserId"></asp:DynamicHyperLink>
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
                <asp:Label runat="server" Text="Status zamówienia"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Order_Status"/>
                 <asp:DynamicHyperLink Visible="false" runat="server" ID="ShowStatus" DataField="Order_StatusId"></asp:DynamicHyperLink>
                
                 </td>


            <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana data dostawy"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Date_required"/>
                 </td>
                               <td  class="DDLightHeader">
                <asp:Label runat="server" Text="Data dostawy"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl10" DataField="Date_delivered"/>
                 </td>

          
</tr>
       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                  <asp:LinkButton runat="server" ID="EdytujZamowienie" Text="Edytuj" ></asp:LinkButton>  | &nbsp;
                               
                                 <asp:DynamicHyperLink ID="ListHyperLink" runat="server" Action="List">Pokaż wszystkie zamówienia</asp:DynamicHyperLink> | &nbsp;

                                 <asp:LinkButton runat="server" ID="ZakonczZamowienie" Text="Zakończ Zamówienie &nbsp;" ><asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;

                                 <asp:LinkButton runat="server" ID="OcenZamowienie" Text="Oceń Zamówienie &nbsp;" >
                                     <asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;

                         
                                 <asp:LinkButton ID="file_create" runat="server" OnClick="Create_document" Text="Wygeneruj dokument zamówienia &nbsp;">
                                     <asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" />
                                     </asp:LinkButton><br />
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

            <h2 class="DDSubHeader">Oceny zamówienia</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="ScoreSet"
                Where="it.Contractor_OrderId=@CPartIndexId"
                Include="User">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_Index_Files" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="Id" />
                    <asp:DynamicField DataField="Price" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
    <asp:DynamicField DataField="Quality" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                    <asp:DynamicField DataField="Delivery_time" HeaderText="Czas" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                    <asp:DynamicField DataField="Contact" HeaderText="Komunikacja" ItemStyle-Width="100px" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
                   

                     <asp:TemplateField HeaderText="Opis" ItemStyle-Width="65%">
    <ItemTemplate> 
      <asp:Label ID="OpisId" Runat="Server" 
                Text='<%#((Eval("Description")).ToString().Replace(Environment.NewLine, "<br/>"))%>' />
    </ItemTemplate>
  </asp:TemplateField>
                     <asp:DynamicField DataField="User" HeaderText="Wystawił" />
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
                    Brak ocen.
                </EmptyDataTemplate>
            </asp:GridView>


 


           
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

