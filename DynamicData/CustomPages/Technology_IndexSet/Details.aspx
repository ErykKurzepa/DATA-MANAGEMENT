<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Details.aspx.cs" Inherits="Details" %>


<asp:Content ID="headContent" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="FormView1" />
        </DataControls>
    </asp:DynamicDataManager>
     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader">Rekord z tabeli <%= table.DisplayName %></h2>

    <asp:DynamicDataManager runat="server">
        <DataControls>
            <asp:DataControlReference ControlID="FormView2" />
        </DataControls>
    </asp:DynamicDataManager>

    <asp:EntityDataSource ID="EDS2" runat="server"
        ContextTypeName="YASA_PL.YASA_PLContainer"
        EntitySetName="TechnologySet"
        EnableUpdate="true"
        Include="Technology_Index, Production_material, Customer_Part_Index"
        Where="it.Id=ANYELEMENT(SELECT VALUE s.TechnologyId FROM Technology_IndexSet AS s WHERE s.ID=@CPartIndexId)">
        <WhereParameters>
            <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
        </WhereParameters>
    </asp:EntityDataSource>


     <asp:FormView runat="server" ID="FormView2" DataSourceID="EDS2" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
                        <table id="detailsTable" style="width:100%" class="DDDetailsTable" cellpadding="6">
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O TECHNOLOGII PRODUKCJI"/>
            </td>
</tr>
                                  <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Id technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl5" DataField="Id"/>
                 </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Tytuł technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Name"/>
                 </td>
</tr>
<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis technologii"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description"/>
                 </td>
</tr>

                          <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="MATERIAŁY WEJŚCIOWE"/>
            </td></tr>
 
                          <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Materiał produkcyjny"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="Production_material"/>
                 </td>
</tr>
                                 <tr class="td">
        <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="MATERIAŁY WYJSCIOWE"/>
            </td></tr>
 
                          <tr class="td">
                                            
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Detal"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Customer_Part_Index"/>
                 </td>
              
</tr>
                   
                </ItemTemplate>
                <EmptyDataTemplate>
                    <div class="DDNoItem">Rekord nie istnieje.</div>
                </EmptyDataTemplate>
            </asp:FormView>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                HeaderText="List of validation errors" CssClass="DDValidator" />
            <asp:DynamicValidator runat="server" ID="DetailsViewValidator" ControlToValidate="FormView1" Display="None" CssClass="DDValidator" />

            <asp:FormView runat="server" ID="FormView1" DataSourceID="DetailsDataSource" OnItemDeleted="FormView1_ItemDeleted" RenderOuterTable="false">
                <ItemTemplate>
       
<tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O REWIZJI TECHNOLOGII PRODUKCJI"/>
            </td>
</tr>
                           <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Numer rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="DynamicControl3" DataField="Index_number"/>
                 </td>
</tr>

                                    <tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Autor rewizji"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl  runat="server" ID="DynamicControl1" DataField="User"/>
                 </td>
            <td style="width:100px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data rewizji"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DynamicControl2" DataField="Date_created_modified" />
                 </td>
</tr>

<tr class="td">
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Opis rewizji"/>
            </td>
            <td colspan="6">
                <asp:DynamicControl  runat="server" ID="Title" DataField="Description" />
                 </td>
</tr>
                    <tr class="td">
            <td class="User_page_header" colspan="6">
                <asp:Label runat="server" Text="INFORMACJE O STATUSIE REWIZJI"/>
            </td>
</tr>

                                      <tr class="td">
                                          <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Status"/>
            </td>
            <td style="width:150px">
                <asp:Label runat="server" ID="ZatwierdzenieLB" Text="brak zatwierdzenia"></asp:Label>
                 </td>
            <td style="width:150px" class="DDLightHeader">
                <asp:Label runat="server" Text="Autor zatwierdzenia"/>
            </td>
            <td style="width:150px">
                <asp:DynamicControl  runat="server" ID="ApprovedBy" DataField="Approved_by"/>
                <asp:Label runat="server" ID="ApprovedByLabel" Text='<%#Eval("Approved_by") %>' Visible="false"></asp:Label>
                 </td>
            <td style="width:100px" class="DDLightHeader">
                <asp:Label runat="server" Text="Data zatwierdzenia"/>
            </td>
            <td>
                <asp:DynamicControl  runat="server" ID="DataAproved" DataField="Date_approved" />
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
                                    OnClientClick='return confirm("Are you sure you want to delete this item?");' /> | &nbsp;
                                 <asp:DynamicHyperLink ID="ListHyperLink" runat="server" NavigateUrl='<%#"~/TechnologySet/Details.aspx?Id=" + Eval("TechnologyId") %>'>Pokaż Wszystkie Rewizje</asp:DynamicHyperLink> | &nbsp;
                                  <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server"
                                       NavigateUrl='<%#"~/Technology_IndexSet/ApproveRevision.aspx?Id=" + Eval("Id") %>'>Zatwierdź Rewizje</asp:DynamicHyperLink> | &nbsp;
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

          

   <h2 class="DDSubHeader">Etapy Technologii</h2>
           <%-- <asp:DynamicDataManager runat="server">
                <DataControls>
                    <asp:DataControlReference ControlID="GridViewCustomer_Part_Index_Files" />
                </DataControls>
            </asp:DynamicDataManager>--%>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Technology_StageSet"
                Where="it.Technology_IndexId=@CPartIndexId"
                OrderBy="it.Number"
                Include="Technology_Instruction">
                <WhereParameters>
                    <asp:QueryStringParameter Name="CPartIndexId" Type="Int32" QueryStringField="Id" Direction="Input" />
                </WhereParameters>
            </asp:EntityDataSource>

         <%--   <asp:GridView ID="GridViewCustomer_Part_Index_Files" runat="server" AllowPaging="True" AllowSorting="false" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
                DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
                <Columns>
                </Columns>          
            </asp:GridView>--%>


             

            <asp:Repeater DataSourceID="EntityDataSource1" EnableTheming="false" EnableViewState="True" ID="Repeater1" runat="server" Visible="True" OnItemDataBound="rptItems_ItemDataBound"
><HeaderTemplate>
    <table class="DDGridView" cellspacing="0" cellpadding="6" rules="all" border="1" style="border-collapse:collapse">
        <tbody>
      
</HeaderTemplate>
        <ItemTemplate>
    <tr class="th">
        <th colspan="6" scope="col"><div class="allleft">Numer operacji: <%# DataBinder.Eval(Container.DataItem, "Number") %></div>   
              <div class="allright">Czas trwania operacji: <%# DataBinder.Eval(Container.DataItem, "Operation_time") %> min</div> </th>
    </tr>
    <tr>
        <td class="DDLightHeader">Nazwa operacji</td>
        <td class="DDLightHeader">Opis operacji</td>
        <td class="DDLightHeader" style="width:150px">Opcje</td>
    </tr>

             <tr>
        <td><%# DataBinder.Eval(Container.DataItem, "Name") %></td>
                 <td><%# DataBinder.Eval(Container.DataItem, "Description") %></td>
                 <td>
                      <asp:DynamicHyperLink CssClass="stage_link" runat="server" Action="Edit" Text="Edytuj" ID="EditOperation"/><br />
                      <asp:LinkButton CssClass="stage_link" runat="server" ID="DeleteOperation" CommandName="Delete" Text="Usuń" OnClientClick='return confirm("Are you sure you want to delete this item?");'/><br />
                      <asp:HyperLink CssClass="stage_link" ID="WybierzDokumentacje" runat="server" NavigateUrl='<%#"~/Technology_InstructionSet/ManageSelections.aspx?Technology_SetId=" + Eval("Id") +"&Technology_IndexId="+ Eval("Technology_IndexId") %>' >Wybierz dokumentację</asp:HyperLink>&nbsp;<asp:Image runat="server" ImageUrl="~/DynamicData/Content/Images/forward.gif" />
                    
                     
                     </panel>

                  </td> 
    </tr>
             <tr>
        <td colspan="6" >Dokumentacja: 
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="Technology_Instruction" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="Technology_Dwg" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="Setup_Sheet" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="CNC_Program" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="Quality_Instruction" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="Quality_Chart" />
            <asp:DynamicControl CssClass="DDNavigationUser" runat="server" DataField="CMM_Program" />


        </td>
               
    </tr>
</ItemTemplate>
<FooterTemplate>
    </tbody></table>
</FooterTemplate>
</asp:Repeater>
           

   <div class="DDBottomHyperLink">
                <asp:HyperLink ID="HyperLink2" runat="server"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj operację</asp:HyperLink>
            </div>

       
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

