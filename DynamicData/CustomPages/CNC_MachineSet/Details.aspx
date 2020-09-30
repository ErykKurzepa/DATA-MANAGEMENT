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
                <asp:Label runat="server" Text="INFORMACJE O MASZYNIE"/>
            </td>
</tr>
                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer Id"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl4" DataField="Id" />
                 </td>
                              <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Rodzaj maszyny"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="CNC_Machine_Type" />
                 </td>
                                    <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Sposób mocowania narzędzia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl13" DataField="Tool_Holder_System" />
                 </td>
</tr>
                       </tr>
                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Producent"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Manufacturer" />
                 </td>
</tr>
 
                         <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Nazwa"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name" />
                 </td>
                               <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Model"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Model" />
                 </td>
                               <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer seryjny"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl6" DataField="Serial_number" />
                 </td>
</tr>
            <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Sterowanie"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl7" DataField="Control" />
                </td>
                </tr>
                  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data produkcji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl11" DataField="Date_purchased" />
                </td>
                      </tr>
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="PARAMETRY MASZYNY"/>
            </td>
</tr>
                              <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Ilość osi"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl8" DataField="Axis" />
                 </td>
                               <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Max. obroty wrzeciona"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl9" DataField="Max_spindle" />
                 </td>
                               <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Moc [kW]"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl10" DataField="Moc" />
                 </td>
</tr>
  <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="DODATKOWY OPIS"/>
            </td></tr>
 <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl12" DataField="Description" />
                </td>
                      </tr>

  <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="OPCJE"/>
            </td></tr>
                       
                       <tr class="td"> <td colspan="6">
                            <asp:DynamicHyperLink runat="server" Action="Edit" Text="Edytuj" ID="EditDynamicHyperLink" /> | &nbsp;
                                <asp:LinkButton runat="server" CommandName="Delete" Text="Usuń" ID="DeleteLinkButton"
                                    OnClientClick='return confirm("Usunąć ten rekord?");' /> | &nbsp;
                                 <asp:DynamicHyperLink ID="ListHyperLink" runat="server" Action="List">Pokaż wszystkie rekordy</asp:DynamicHyperLink>
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

       
       
            <h2 class="DDSubHeader">Dokumentacja maszyny</h2>
            <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CNC_Machine_FilesSet"
                Where="it.CNC_MachineId=@CPartIndexId">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

            <asp:GridView ID="GridViewCustomer_Part_Index_Files" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                    <asp:DynamicField DataField="File_title" />
                    <asp:DynamicField DataField="File_name_number" />
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
                <asp:DynamicHyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj plik</asp:DynamicHyperLink>
            </div>

  
    
            
              <h2 class="DDSubHeader">Programy w maszynie</h2>


<asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewprogrammes" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS_Programmes" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="CNC_ProgramSet"
                Where="it.CNC_MachineId=@CPartId334"
                Include="CNC_Machine, Fixture, Setup_Sheet">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId334" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

  <asp:GridView ID="GridViewprogrammes" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView" 
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" 
                DataSourceID="EDS_Programmes" AutoGenerateColumns="false">
                <Columns>
                     <asp:DynamicField DataField="Id" />
                    <asp:DynamicField DataField="Name" />
                      <asp:DynamicField DataField="Description" />
                    <%--<asp:DynamicField DataField="CNC_Machine" />--%>
                    <asp:DynamicField DataField="Fixture" />
             <asp:DynamicField DataField="Setup_Sheet" HeaderText="Arkusz ustawczy" />
                    
                   
                   <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetails" Text="Więcej" NavigateUrl='<%# "~/CNC_ProgramSet/Details.aspx?Id=" + Eval("Id")%>'  />
                          <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetailsArrow"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif" NavigateUrl='<%# "CNC_Program/Details.aspx?Id=" + Eval("Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

        
          
            
             <h2 class="DDSubHeader">Narzędzia w maszynie</h2>


<asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewtools" />
                </DataControls>
            </asp:DynamicDataManager>

            <asp:EntityDataSource ID="EDS_Tools" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="ToolCNC_ProgramSet"
      
                Where="it.CNC_Program.CNC_MachineId=@CPartId33"
                Include="CNC_Program, Tool"
                OrderBy="it.[ToolId]"
                
                >
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartId33" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

  <asp:GridView ID="GridViewtools" runat="server" AllowPaging="True" AllowSorting="True" CssClass="DDGridView"  
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" 
                DataSourceID="EDS_Tools" AutoGenerateColumns="false">
                <Columns>
                     
                   <%--  <asp:DynamicField DataField="Id" />
                     <asp:DynamicField DataField="CNC_ProgramID" />
                     <asp:DynamicField DataField="ToolId" />--%>


                   <asp:TemplateField HeaderText="Id Narzędzia">
                          <ItemTemplate>
                              <asp:Label  Text='<%#"TL"+Eval("ToolId")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Nazwa Narzędzia">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Tool.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                    <asp:TemplateField HeaderText="Opis Narzędzia">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Tool.Description")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Id Programu">
                          <ItemTemplate>
                              <asp:Label Text='<%#"CNC_"+Eval("CNC_Program.Id")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Typ narzędzia">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Tool.Tool_Assembly_Type.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                  
              
                    
                      
                  
                    
                    
                   
                   <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetails" Text="Więcej" NavigateUrl='<%# "~/ToolSet/Details.aspx?Id=" + Eval("Tool.Id")%>'  />
                          <asp:DynamicHyperLink runat="server" ID="ViewCNCMachineDetailsArrow"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif" NavigateUrl='<%# "ToolSet/Details.aspx?Id=" + Eval("Tool.Id")%>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                   <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>  
            
            
  
            
            
            
            
            
                    
            
             </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

