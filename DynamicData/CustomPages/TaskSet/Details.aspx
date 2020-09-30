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
    <h2 class="DDSubHeader">Dane <%= table.DisplayName %></h2>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false" >
                <ItemTemplate>
                    <table style="width:100%" id="detailsTable" class="DDDetailsTable" cellpadding="6">


<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O ZADANIU"/>
            </td>
</tr>
<tr class="td">
     <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id zadania"/>
            </td>
            <td >
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Id" />
                 </td>
    </tr>
                        <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł zadania"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Title" />
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Czynności do wykonania"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl runat="server" ID="Description" DataField="Description" />
                 </td>
</tr>
<tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Priorytet"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="Priorytet" DataField="Priorytet" />
                 </td>

          
</tr>
 <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE NA TEMAT REALIZACJI ZADANIA"/>
            </td>
</tr>
       <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Osoba odpowiedzialna <br>za wykonanie zadania"/>
            </td>
            <td colspan="2">
                <asp:DynamicControl runat="server" ID="User_Task" DataField="User_Task" />
                 </td>

</tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Data rozpoczęcia"/>
            </td>
            <td  style="width:260px" >
                <asp:DynamicControl runat="server" ID="StartDate" DataField="StartDate" /></td>


                
                <td class="DDLightHeader" style="width:110px">
                <asp:Label runat="server" Text="Wymagana <br>data ukończenia"/>
            </td>
            <td >
                <asp:DynamicControl runat="server" ID="RequiredEndDate" DataField="RequiredEndDate" /></td>
        </tr>

    <tr class="td">
  <td class="DDLightHeader">
                <asp:Label Visible="true" runat="server" Text="Status realizacji"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="DynamicControl1" DataField="TaskStatus" />
                <asp:DynamicHyperLink Visible="false"  runat="server" ID="ShowStatus" DataField="TaskStatusId"></asp:DynamicHyperLink>
                 </td>


        <td class="DDLightHeader">
                <asp:Label runat="server" Visible="true" ID="DataZakonczenia" Text="Data zakończenia"/>
            </td>
            <td>
                <asp:DynamicControl runat="server" ID="EndDate" DataField="EndDate" />
              
            </td>
          </tr>

                        <tr class="td">
 <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="POWIĄZANIA"/>
            </td>
</tr>

                         <tr class="td">
                         <td class="DDLightHeader">
                <asp:Label ID="PowiadomienieLabel" runat="server" Text="Powiadomienie"/>
            </td>
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="Notification" DataField="Notification" />
                 </td></tr>
       
                                  <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE ZLECENIODAWCY"/>
            </td>
        </tr>
 <tr class="td">
            <td class="DDLightHeader">
                <asp:Label runat="server" Text="Zadanie utworzył"/>
            </td>
            <td >
                <asp:DynamicControl runat="server" ID="Wystawil" DataField="User" />
                 </td>

      <td class="DDLightHeader">
                <asp:Label runat="server" Text="Data utworzenia"/>
            </td>
            <td colspan="3">
                <asp:DynamicControl runat="server" ID="DynamicControl67" DataField="Date_created_modified" />
   <asp:DynamicHyperLink runat="server" Visible="false" ID="UserIdZakoncz" DataField="UserIdTask"></asp:DynamicHyperLink>
                <asp:DynamicHyperLink Visible="false" runat="server" ID="UserIdAnuluj" DataField="UserId"></asp:DynamicHyperLink>
                 </td>
        </tr>
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
                           
                                   <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl="~/TaskSet/List.aspx">Pokaż Wszystkie Zadania</asp:DynamicHyperLink> | &nbsp;
                                  <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" NavigateUrl="~/MojeZadania.aspx" >Pokaż Moje Zadania</asp:DynamicHyperLink> | &nbsp;
                                <asp:LinkButton runat="server" ID="ZakonczZadanie" Text="Zakończ Zadanie &nbsp;" ><asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;
                    <asp:LinkButton runat="server" ID="AnulujZadanie" Text="Anuluj Zadanie &nbsp;" ><asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" /></asp:LinkButton>  | &nbsp;
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
       
            
            
            
            <h2 class="DDSubHeader">Notatki</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server" EnableDelete="true"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CommentSet"
                Where="it.TaskId=@CPartId"
                
                 >
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" OnRowDataBound="GridViewCustomer_Part_IndexSet_RowDataBound"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"  OnRowDeleted="GridViewCustomer_Part_IndexSet_RowDeleted"
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
            </asp:GridView>


            <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink1" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj notatkę</asp:HyperLink>
            </div>  
            

            
             </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

