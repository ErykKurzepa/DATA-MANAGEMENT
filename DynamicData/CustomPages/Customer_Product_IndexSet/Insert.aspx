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
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Insert"
                OnItemCommand="FormView1_ItemCommand" OnItemInserted="FormView1_ItemInserted" RenderOuterTable="false">
                <InsertItemTemplate>
                     <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
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
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Index_Number" Mode="Insert"/>
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Kontruktor rewizji"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Index_designer" Mode="Insert"/>
                 </td>
          </tr>
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Index_description" Mode="Insert"/>
                 </td>
          </tr>
  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data rewizji"/>
            </td>
            <td style="width:250px">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Index_date" Mode="Insert"/>
                 </td>

              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data otrzymania"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Date_received" Mode="Insert"/>
               
                 <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Customer_Product" Mode="Insert" Visible="false"/>
                 </td>
          </tr>


                          <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="2">
                                <asp:LinkButton runat="server" CommandName="Insert" Text="Dodaj" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Cancel" Text="Anuluj" CausesValidation="false" /> | &nbsp;
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableInsert="true" OnInserting="Insert_fields" OnInserted="Show_Record"/>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

