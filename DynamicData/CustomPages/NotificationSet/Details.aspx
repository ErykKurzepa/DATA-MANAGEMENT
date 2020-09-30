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
    <h2 class="DDSubHeader">Powiadomienie o zmianach</h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                    <table style="width:100%" id="detailsTable" class="DDDetailsTable" cellpadding="6">

<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O POWIADOMIENIU"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer Id"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Id" />
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Typ powiadomienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="NotyficationType" />
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł powiadomienia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Name" />
                 </td>
</tr>
 
                     
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis "/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Description" />
               </td>
</tr>



<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE NA TEMAT REALIZACJI POWIADOMIENIA"/>
            </td>
</tr>

                         <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opiekun powiadomienia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="User" />
                 <asp:DynamicHyperLink runat="server" ID="UserIdOpiekun" DataField="UserId" Visible="false"></asp:DynamicHyperLink>
               </td>

                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data utworzenia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Date_created_modified" />
               </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Wymagana data wdrożenia powiadomienia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="RequiredEndDate" />
               </td>
</tr>


                          <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Status"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="NotificationStatus" />
                <asp:DynamicHyperLink runat="server" ID="ShowStatus" DataField="NotificationStatusId" Visible="false"></asp:DynamicHyperLink>
               </td>

                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data zakończenia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl10" DataField="EndDate" />
               </td>
            
</tr>


                               <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="POWIĄZANIA"/>
            </td>
</tr>

                         <tr class="td">
                         <td class="DDLightHeader">
                <asp:Label ID="PowiadomienieLabel" runat="server" Text="Detal:"/>
            </td>
            <td colspan="1">
                <asp:DynamicControl runat="server" ID="DynamicControl4" DataField="Customer_Part" />
                 </td>
                               <td class="DDLightHeader">
                <asp:Label ID="Label1" runat="server" Text="Produkt:"/>
            </td>
            <td colspan="1">
                <asp:DynamicControl runat="server" ID="DynamicControl5" DataField="Customer_Product" />
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
                                    OnClientClick='return confirm("Are you sure you want to delete this item?");' /> | &nbsp;
                                 <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl="~/NotificationSet/List.aspx">Pokaż Wszystkie Powiadomienia</asp:DynamicHyperLink> | &nbsp;
                             <asp:LinkButton runat="server"  ID="ZakonczPowiadomienie" Text="Zakończ Powiadomienie &nbsp;" ><asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;
                    <asp:LinkButton runat="server" ID="AnulujPowiadomienie" Text="Anuluj Powiadomienie &nbsp;" ><asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;
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

        
            
            
            
            
            
            
            
            
             <br />
             <h2 class="DDSubHeader">Powiązane Zadania</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewZadania" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" EnableDelete="true"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="TaskSet"
                Where="it.NotificationId=@CPartId"
                
                 >
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewZadania" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" OnRowDataBound="GridViewZadania_RowDataBound"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"  
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="Id" ItemStyle-Width="5%" />
                   <asp:TemplateField HeaderText="Tytuł zadania" ItemStyle-Width="65%">
    <ItemTemplate> 
      <asp:Label ID="TytulZadania" Runat="Server" 
                Text='<%#((Eval("Title")).ToString().Replace(Environment.NewLine, "<br/>"))%>' />
    </ItemTemplate>
  </asp:TemplateField>
                      <asp:DynamicField DataField="User_task" HeaderText="Osoba odpowiedzialna" />
                       <asp:DynamicField DataField="RequiredEndDate" HeaderText="Wymagana zada zakończenia"  />   
                     <asp:DynamicField DataField="TaskStatus" HeaderText="Status zada zakończenia"  />   

                       <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="TechnologyListDetails" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server" ID="TechnologyListDetailsArrow"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                  <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


            <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj zadanie</asp:HyperLink>
            </div>  
            
            

            
                <br />
             <h2 class="DDSubHeader">Notatki</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server" EnableDelete="true"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CommentSet"
                Where="it.NotificationId=@CPartId"
                
                 >
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" OnRowDataBound="GridViewCustomer_Part_IndexSet_RowDataBound"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" OnRowDeleted="GridViewCustomer_Part_IndexSet_RowDeleted" 
                DataSourceID="EDS1" AutoGenerateColumns="false">
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
                <asp:HyperLink ID="HyperLink1" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj notatkę</asp:HyperLink>
            </div>  
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

