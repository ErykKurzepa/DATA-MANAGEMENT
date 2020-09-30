<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Details.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    
     <asp:DynamicDataManager ID="DynamicDataManager2" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <asp:EntityDataSource ID="EDS2" runat="server"
        ContextTypeName="YASA_PL.YASA_PLContainer"
        EntitySetName="ContractorSet"
        Include="Contractor_Contact, Country"
        Where="it.Id=ANYELEMENT(SELECT VALUE s.ContractorId FROM Contractor_ContactSet AS s WHERE s.ID=@CPartIndexId)">
        <WhereParameters>
            <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
        </WhereParameters>
    </asp:EntityDataSource>

    
    <h4 class="DDSubHeader">Dane dostawcy</h4>
    <asp:FormView ID="FormView3" runat="server" DataSourceID="EDS2" DataKeyNames="Id" RenderOuterTable="false">
      
         <ItemTemplate>
<table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE PODSTAWOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa"/>
            </td>
            <td colspan="6" >
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" />
                 </td>
                               </tr>
                           <tr class="td">
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Adres"/>
            </td>
            <td colspan="6" >
               <asp:DynamicControl DataField="Address" ID="DynamicControl2" runat="server" /><br />
                      <asp:DynamicControl DataField="Postal_Code" ID="DynamicControl10" runat="server" />
                      <asp:DynamicControl DataField="City" ID="DynamicControl5" runat="server" />
                      <asp:DynamicControl DataField="Country" ID="DynamicControl6" runat="server" />
                 </td>
</tr>
    </table>
        </ItemTemplate>
    <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
    </asp:FormView>
  
    
     <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Dane pracownika</h2>

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
                <asp:Label runat="server" Text="DANE PERSONALNE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Imię"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="F_Name" />
                 </td>
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwisko"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="L_Name" />
                 </td>
</tr>
                       <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Firma"/>
            </td>
            <td colspan="4">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Contractor" />
                 </td>
                           </tr>
                       <tr class="td">
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dział"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Department" />
                 </td>
                                           <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Stanowisko"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Position" />
                 </td>
</tr>
                                      <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dodatkowy opis"/>
            </td>
            <td colspan="6" >
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Description" />
                 </td>
                                  
</tr>
                        <tr class="td">
            <td class="User_page_header" colspan="6">
                           <asp:Label runat="server" Text="DANE KONTAKTOWE"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Telefon stacjonarny"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="W_Phone_No" />
                 </td>
                                  <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Telefon komórkowy"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="M_Phone_No" />
                 </td>
 <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="E-mail"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Email" />
                 </td>
</tr>

                        <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                <asp:DynamicHyperLink ID="EditDynamicHyperLink" runat="server" Action="Edit" Text="Edytuj" /> | &nbsp;
                                <asp:LinkButton ID="DeleteLinkButton" runat="server" CommandName="Delete" Text="Usuń"
                                    OnClientClick='return confirm("Usunąć ten rekord?");' /> | &nbsp;
                                <asp:DynamicHyperLink runat="server" 
                                     NavigateUrl='<%#"~/ContractorSet/Details.aspx?Id="+ ((Eval("ContractorId")).ToString())%>'
                                     Text="Pokaż pełne dane firmy tego pracownika" /> | &nbsp;
                                  <asp:DynamicHyperLink runat="server" Action="List" Text="Pokaż wszystkich pracowników" /> | &nbsp;
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

        </ContentTemplate>
        
    </asp:UpdatePanel>

</asp:Content>

