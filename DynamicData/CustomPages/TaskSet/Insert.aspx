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
                OnItemCommand="FormView1_ItemCommand" RenderOuterTable="false">
                <InsertItemTemplate>
   <table style="width:100%" id="detailsTable" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O ZADANIU"/>
            </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł zadania:"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Title" Mode="Insert"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Opis czynności do wykonania:"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl runat="server" ID="Description" DataField="Description" Mode="Insert"/>
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Priorytet:"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="Priorytet" DataField="Priorytet" Mode="Insert"/>
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
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="User_Task" DataField="User_Task" Mode="Insert"/>
                 </td>
</tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Data rozpoczęcia"/>
            </td>
            <td style="width:260px">
                <asp:DynamicControl runat="server" ID="StartDate" DataField="StartDate" Mode="Insert"/></td>

                <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana data ukończenia"/>
            </td>
            <td >
                <asp:DynamicControl runat="server" ID="RequiredEndDate" DataField="RequiredEndDate" Mode="Insert"/></td>
        </tr>
        
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
                <asp:DynamicControl runat="server" ID="DynamicControl1" DataField="Notification" Mode="Insert"/>
                 </td></tr>  
       
       
       
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

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableInsert="true" OnInserting="Insert_fields" OnInserted="FormView1_ItemInserted"/>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

