﻿<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Details.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader">Rekord z tabeli <%= table.DisplayName %></h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
                <DataControls>
                    <asp:DataControlReference ControlID="FormView1" />
                </DataControls>
            </asp:DynamicDataManager>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                      <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O DETALU"/>
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
      <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE EDYCJI"/>
            </td>
</tr>
          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Modyfikował"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="User" />
                 </td>
               <td style="width:50px" class="DDLightHeader">
                 <asp:Label runat="server" Text="Dnia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Date_created_modified"/>
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
                                <asp:DynamicHyperLink ID="ListHyperLink" runat="server" Action="List">Pokaż wszystkie detale</asp:DynamicHyperLink> | &nbsp;
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Taki rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>



            <h2 class="DDSubHeader">Wykaz rewizji detalu</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Customer_Part_IndexSet"
                Where="it.Customer_PartId=@CPartId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EDS1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="Index_number" />
                    <asp:DynamicField DataField="Index_description" />
                    <asp:DynamicField DataField="Index_designer" />
                    <asp:DynamicField DataField="Index_date" />
                    <asp:DynamicField DataField="Date_received" />
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
                <asp:HyperLink ID="HyperLink1" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rewizję</asp:HyperLink>
            </div>

            <br />
            <h2 class="DDSubHeader">Wykaz powiadomień</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Powiadomienia" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="NotificationSet"
                Where="it.Customer_PartId=@CPartId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_Powiadomienia" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" OnRowDataBound="GridViewCustomer_Part_Powiadomienia_RowDataBound"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="Id" HeaderText="Numer Id"  /> 
                    <asp:DynamicField DataField="Name" />
                    <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="NotyficationType" />
                    <asp:DynamicField DataField="User"  HeaderText="Opiekun powiadomienia"/>
                    <asp:DynamicField DataField="RequiredEndDate"  HeaderText="Wymagana<br> data ukończenia" />
                    <asp:DynamicField DataField="NotificationStatus" HeaderText="Status"/>

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
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj powiadomienie</asp:HyperLink>
            </div>
        
        
        
        
            <br />
             <h2 class="DDSubHeader">Notatki</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource2" runat="server" EnableDelete="true"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CommentSet"
                Where="it.Customer_PartId=@CPartId"
                 >
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" OnRowDataBound="GridViewCustomer_Part_IndexSet_RowDataBound"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" OnRowDeleted="GridViewCustomer_Part_IndexSet_RowDeleted" 
                DataSourceID="EntityDataSource2" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="Id" ItemStyle-Width="5%" />
                   <asp:TemplateField HeaderText="Treść notatki" ItemStyle-Width="65%">
    <ItemTemplate> 
      <asp:Label ID="BirthDateLabel" Runat="Server" 
                Text='<%#((Eval("description")).ToString().Replace(Environment.NewLine, "<br/>"))%>' />
    </ItemTemplate>
  </asp:TemplateField>
                      <asp:DynamicField DataField="User" HeaderText="Dodana przez" />
                       <asp:DynamicField DataField="Date_created" HeaderText="Dnia"  />   

                       <asp:TemplateField HeaderText="" Visible="false">
    <ItemTemplate> 
      <asp:Label ID="user_comment_id" Runat="Server" 
                Text='<%#(Eval("UserId"))%>' />
    </ItemTemplate>
  </asp:TemplateField>

                     <asp:TemplateField>
                        <ItemTemplate>
                            <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" ID="CommentEdit"
                            /> | &nbsp;<asp:LinkButton runat="server" CommandName="Delete" Text="Usuń"
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
                <asp:HyperLink ID="HyperLink3" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj notatkę</asp:HyperLink>
            </div>  
        
        
        
        
        
        
        
        </ContentTemplate>

    </asp:UpdatePanel>
</asp:Content>

