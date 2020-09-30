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
                HeaderText="Lista błędów" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Edit"  RenderOuterTable="false"
                OnItemCommand="FormView1_ItemCommand" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                      
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
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Index_Number" Mode="Edit"/>
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kontruktor rewizji"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Index_designer"  Mode="Edit"/>
                 </td>
          </tr>
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Index_description"  Mode="Edit"/>
                 </td>
          </tr>
  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data rewizji"/>
            </td>
            <td style="width:250px">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Index_date"  Mode="Edit"/>
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data otrzymania"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Date_received" Mode="Edit" />

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

