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
                <asp:Label runat="server" Text="INFORMACJE O NARZĘDZIU"/>
            </td>
</tr>
      <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Id"/>
                 </td>
</tr>
                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Tool_Number"/>
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name"/>
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="System mocowania narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Tool_Holder_System"/>
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description"/>
                 </td>
</tr>
                           <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="ELEMENTY NARZĘDZIA"/>
            </td>
</tr>
    

                                 <tr class="td">
                             <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Elementy narzędzia"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl   runat="server" ID="DynamicControl6" DataField="Tool_Element"  />
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
                                 <asp:DynamicHyperLink ID="ListHyperLink2" runat="server" NavigateUrl="~/ToolSet/List.aspx">Pokaż Wszystkie Narzędzia</asp:DynamicHyperLink> | &nbsp;
                            <asp:DynamicHyperLink ID="ChooseToolElements" runat="server" NavigateUrl='<%#"~/Tool_ElementSet/ManageSelections.aspx?ToolId=" + Eval("Id") %>'> Wybierz Elementy Narzędzia</asp:DynamicHyperLink>
                             
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

            <asp:EntityDataSource ID="DetailsDataSource" runat="server" EnableDelete="true" Include="ToolCNC_Program" />

            <asp:QueryExtender TargetControlID="DetailsDataSource" ID="DetailsQueryExtender" runat="server">
                <asp:DynamicRouteExpression />
            </asp:QueryExtender>


             <h2 class="DDSubHeader">Dokumentacja Techniczna Narzędzia</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Tool_Document_FileSet"
                Include="Tool_Document_Type"
                Where="it.ToolId=@CPartIndexId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_Index_Files" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="Id"/>
                    <asp:DynamicField DataField="File_name_number" />
                    <asp:DynamicField DataField="File_title" />
                    <asp:DynamicField DataField="Tool_Document_Type" />
                    <asp:DynamicField DataField="filePath" />
                    <asp:DynamicField DataField="File_size" />

                     <asp:TemplateField HeaderText="Opis" ItemStyle-Width="65%">
    <ItemTemplate> 
      <asp:Label ID="OpisId" Runat="Server" 
                Text='<%#((Eval("Description")).ToString().Replace(Environment.NewLine, "<br/>"))%>' />
    </ItemTemplate>
  </asp:TemplateField>
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
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


              <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="HyperLink1" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj plik</asp:DynamicHyperLink>
            </div>



              <%-- <h2 class="DDSubHeader">Powiązane Maszyny</h2>


<asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridView1mACHINES" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS_Machines" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="ToolCNC_MachineSet"
                Where="it.ToolId=@CPartId33"
                Include="CNC_Machine, CNC_Machine.CNC_Machine_Type">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId33" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

  <asp:GridView ID="GridView1mACHINES" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" 
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" 
                DataSourceID="EDS_Machines" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Id Maszyny">
                          <ItemTemplate>
                              <asp:Label  Text='<%#"MACH_"+Eval("CNC_Machine.Id")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Nazwa Maszyny">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("CNC_Machine.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Typ">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("CNC_Machine.CNC_Machine_Type.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                       <asp:TemplateField HeaderText="Numer Seryjny">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("CNC_Machine.Serial_number")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                     <asp:TemplateField HeaderText="Model">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("CNC_Machine.Model")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField>
                    
                     <asp:DynamicField DataField="Numer_In_Machine" HeaderText="Numer Narzędzia w maszynie" />
                   
                   <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetails" Text="Więcej" NavigateUrl='<%# "~/CNC_MachineSet/Details.aspx?Id=" + Eval("CNC_Machine.Id")%>'  />
                          <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetailsArrow"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif" NavigateUrl='<%# "CNC_MachineSet/Details.aspx?Id=" + Eval("CNC_Machine.Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

              <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="DynamicHyperLink55" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Wybierz maszyny</asp:DynamicHyperLink>
            </div>--%>

            <br />





    <h2 class="DDSubHeader">Powiązane Programy CNC</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_IndexSet" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="ToolCNC_ProgramSet"
                Where="it.ToolId=@CPartId2"
                Include="CNC_Program, CNC_Program.CNC_Machine">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId2" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_IndexSet" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" 
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" 
                DataSourceID="EDS1" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Id Programu">
                          <ItemTemplate>
                              <asp:Label  Text='<%#"CNC_"+Eval("CNC_Program.Id")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Nazwa Programu">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("CNC_Program.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                    
                    <asp:TemplateField HeaderText="Opis programu">
                           <ItemTemplate>
                             
                                   <asp:Label CssClass="wrap_text" Text='<%#Eval("CNC_Program.Description")%>' runat="server"></asp:Label>
                              
                            
                        </ItemTemplate>
                    </asp:TemplateField> 
                   
                     <asp:TemplateField HeaderText="Maszyna">
                          <ItemTemplate>
                              <asp:Label  Text='<%# "MACH_" +   Eval("CNC_Program.CNC_Machine.Id")  + " " +  Eval("CNC_Program.CNC_Machine.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                   <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="ViewCNCProgramDetails" Text="Więcej" NavigateUrl='<%# "~/CNC_ProgramSet/Details.aspx?Id=" + Eval("CNC_Program.Id")%>'  />
                          <asp:DynamicHyperLink runat="server" ID="ViewCNCProgramDetailsArrow"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif" NavigateUrl='<%# "CNC_ProgramSet/Details.aspx?Id=" + Eval("CNC_Program.Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>


                     <br />





        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

