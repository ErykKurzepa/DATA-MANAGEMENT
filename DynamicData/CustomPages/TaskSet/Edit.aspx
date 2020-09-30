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

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" DefaultMode="Edit"
                OnItemCommand="FormView1_ItemCommand" RenderOuterTable="false">
                <EditItemTemplate>
                    <table style="width:100%" id="detailsTable" class="DDDetailsTable" cellpadding="6">
     <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O ZADANIU"/>
            </td>
</tr>
                        <tr class="td">
     <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id zadania:"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Id" />
                 </td>
    </tr>
                        <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł zadania:"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Title" Mode="Edit"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Czynności do wykonania:"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl runat="server" ID="Description" DataField="Description" Mode="Edit"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Priorytet:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="Priorytet" DataField="Priorytet" Mode="Edit"/>
                 </td>

          
</tr>
 <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE NA TEMAT REALIZACJI ZADANIA"/>
            </td>
</tr>
       <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Osoba odpowiedzialna <br>za wykonanie zadania:"/>
            </td>
            <td colspan="2">
                <asp:DynamicControl runat="server" ID="User_Task" DataField="User_Task" Mode="Edit"/>
                 </td>

</tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Data rozpoczęcia"/>
            </td>
            <td style="width:260px">
                <asp:DynamicControl runat="server" ID="StartDate" DataField="StartDate" Mode="Edit"/></td>

   
                
                <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana <br>data ukończenia"/>
            </td>
            <td >
                <asp:DynamicControl runat="server" ID="RequiredEndDate" DataField="RequiredEndDate" Mode="Edit"/></td>
        </tr>

<%--    <tr class="td">
  <td class="DDLightHeader">
                <asp:Label runat="server" Text="Status realizacji:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl1" DataField="Status" Mode="Edit"/>
                 </td>
          </tr>--%>

                        <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="POWIĄZANIA"/>
            </td>
</tr>

                         <tr class="td">
                         <td class="DDLightHeader">
                <asp:Label ID="PowiadomienieLabel" runat="server" Text="Powiadomienie:"/>
            </td>
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="Notification" DataField="Notification" Mode="Edit"/>
                 </td></tr>
       
                                  <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE ZLECENIODAWCY"/>
            </td>
        </tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Zadanie utworzył:"/>
            </td>
            <td >
                <asp:DynamicControl runat="server" ID="Wystawil" DataField="User" Mode="Edit"/>
                 </td>

      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Data utworzenia:"/>
            </td>
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="DynamicControl67" DataField="Date_created_modified" Mode="Edit"/>
  
                 </td>
        </tr>
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

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableUpdate="true"  OnUpdated="FormView1_ItemUpdated"/>

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

