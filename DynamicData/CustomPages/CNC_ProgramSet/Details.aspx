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
                <asp:Label runat="server" Text="INFORMACJE O PROGRAMIE CNC"/>
            </td>
</tr>
                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer Id programu"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Id" />
                 </td>
</tr>

                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł programu"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" />
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis programu"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description" />
                 </td>
</tr>

                          <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O MASZYNIE, PRZYRZĄDZIE I ARKUSZU USTAWCZYM"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Maszyna"/>
            </td>
            <td style="width:250px">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="CNC_Machine" />
                 </td>

            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Przyrząd"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Fixture" />
                 </td>
                                 <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Arkusz ustawczy"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Setup_sheet" />
                 </td>
</tr>
                   <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="POWIĄZANIA"/>
            </td>
</tr>
                     <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Technologie produkcji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl   runat="server" ID="DynamicControl5" DataField="Technology_Stage" UIHint="ManyToManyTechnology" />
               </td>

                          
</tr>
                    
 <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DANE EDYCJI"/>
            </td>
</tr>
                     <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dodał / Modyfikował"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl   runat="server" ID="DynamicControl8" DataField="User" />
               </td>

                             <td style="width:100px" class="DDLightHeader">
                <asp:Label runat="server" Text="Dnia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Date_created_modified" />
               </td>
</tr>
       <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                        <tr class="td">
                            <td colspan="6">
                                <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" ID="EditDynamicHyperLink" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Delete" Text="Usuń" ID="DeleteLinkButton"
                                    OnClientClick='return confirm("Usunąć ten rekord?");' /> | &nbsp;
                                 <asp:DynamicHyperLink ID="ListHyperLink2" runat="server" NavigateUrl="~/CNC_ProgramSet/List.aspx">Pokaż Wszystkie Programy CNC</asp:DynamicHyperLink> | &nbsp;
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


            <h2 class="DDSubHeader">Wykaz rewizji programu</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CNC_Program_IndexSet"
                Where="it.CNC_ProgramId=@CPartId2">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId2" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EDS1" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="Index_number" />
                      <asp:DynamicField DataField="Index_description" />
                      <asp:DynamicField DataField="User_approved" />
                      <asp:DynamicField DataField="Date_approved"/>
                                <asp:DynamicField DataField="CNC_Status"/>   
                  
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
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rewizję</asp:HyperLink>
            </div>  

            
            <h2 class="DDSubHeader">Wykaz podprogramów</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CNC_SubprogramSet"
                Where="it.CNC_ProgramId=@CPartId2">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId2" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                   <asp:DynamicField DataField="Id" />
                      <asp:DynamicField DataField="Name" />
                      <asp:DynamicField DataField="Description" />

                  
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
                <asp:HyperLink ID="HyperLink3" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj podprogram</asp:HyperLink>
            </div>  


             <asp:EntityDataSource ID="DetailsDataSource5" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="ToolCNC_ProgramSet"
                Where="it.CNC_ProgramId=@CPartId2"
                 Include="Tool, Tool.Tool_Element, Tool.Tool_Assembly_Type">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId2" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>


            <h2 class="DDSubHeader">Wykaz narzędzi</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridView2" />
                </DataControls>
            </asp:DynamicDataManager>

           <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="DetailsDataSource5" AutoGenerateColumns="false">
                <Columns>
                  
              
                   <asp:TemplateField HeaderText="Id narzędzia">
                          <ItemTemplate>
                              <asp:Label Text='<%#"TL"+Eval("Tool.Id")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>  
                      
                    <asp:TemplateField HeaderText="Nazwa narzędzia">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Tool.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Typ obróbki">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Tool.Tool_Assembly_Type.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>  
                     <asp:TemplateField HeaderText="Opis narzędzia">
                          <ItemTemplate>
                              <asp:Label CssClass="wrap_text" Text='<%#Eval("Tool.Description")%>' runat="server"></asp:Label>
                          <%-- <asp:Label CssClass="wrap_text" Tooltip='<%#Eval("Tool.Description")%>' Text= '<%# Eval("Tool.Description").ToString().Substring(0,Math.Min(20,Eval("Tool.Description").ToString().Length)) + "...." %>' runat="server"></asp:Label>--%>
                          

                          </ItemTemplate>
                      </asp:TemplateField>  
                     <%-- <asp:TemplateField HeaderText="Maszyna">
                          <ItemTemplate>
                              <asp:Label Text='<%# "MACH_" +Eval("Tool.CNC_Machine.Id") + " " + Eval("Tool.CNC_Machine.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> --%>


                    <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="ToolListView" Text="Więcej" NavigateUrl='<%# "~/ToolSet/Details.aspx?Id=" + Eval("Tool.Id")%>'  />
                          <asp:DynamicHyperLink runat="server" ID="ToolListView1"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif" NavigateUrl='<%# "~/ToolSet/Details.aspx?Id=" + Eval("Tool.Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
              
            </asp:GridView>

            <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink4" runat="server">Wybierz Narzędzia <img runat="server" src="~/DynamicData/Content/Images/forward.gif" alt="Insert new item" /></asp:HyperLink>
            </div>  

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

