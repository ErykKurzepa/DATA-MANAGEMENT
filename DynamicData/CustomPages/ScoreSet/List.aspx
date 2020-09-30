<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="List.aspx.cs" Inherits="List" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="GridView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader"><%= table.DisplayName%></h2>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="DD">
                Wybierz dostawcę:</b> 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="List of validation errors" CssClass="DDValidator" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" CssClass="DDValidator" />
                <asp:QueryableFilterRepeater runat="server" ID="FilterRepeater">
                    <ItemTemplate><span class="filter"> 
                        <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' OnPreRender="Label_PreRender" />
                        <asp:DynamicFilter runat="server" ID="DynamicFilter" OnFilterChanged="DynamicFilter_FilterChanged" />|</span>
                    </ItemTemplate>
                </asp:QueryableFilterRepeater>
                <asp:QueryExtender ID="QE1" runat="server" TargetControlID="GridDataSource">
                    <asp:DynamicFilterExpression ControlID="FilterRepeater" />
                    
                    <asp:CustomExpression OnQuerying="Unnamed_Querying"></asp:CustomExpression>

                </asp:QueryExtender>

                 <asp:DropdownList runat="server" ID="lbContractor" OnTextChanged="Button1_Click" AutoPostBack="true"  
                     DataSourceID="EDSContractors" AppendDataBoundItems="True"
                      DataTextField="Name" DataValueField="Id">
                     <asp:ListItem Value="0" Text="wszyscy dostawcy" />
                 </asp:DropdownList>
                <br />
              </div>
           <hr />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" EnablePersistedSelection="true"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView" AutoGenerateColumns="false"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                     <asp:TemplateField HeaderText="Dostawca">
                          <ItemTemplate>
                              <asp:Label Text='<%#Eval("Contractor_Order.Contractor.Name")%>' runat="server"></asp:Label>
                          </ItemTemplate>
                      </asp:TemplateField> 
                    
                    <asp:DynamicField DataField="Contractor_Order" />
                    <asp:TemplateField HeaderText="Cena">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="TPrice" Text='<%#Eval("Price") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Jakość">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="TQuality" Text='<%#Eval("Quality") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField> 
                      <asp:TemplateField HeaderText="Czas">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="TDelivery_time" Text='<%#Eval("Delivery_time") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField>
                     <asp:TemplateField HeaderText="Kontakt">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="TContact" Text='<%#Eval("Contact") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField>
                 
                     <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="User" />

                  
                </Columns>

                <PagerStyle CssClass="DDFooter"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:EntityDataSource ID="GridDataSource" runat="server" EnableDelete="true" Include="Contractor_Order, Contractor_Order.Contractor" />
            
   <asp:EntityDataSource ID="EDSContractors" runat="server"
        ContextTypeName="YASA_PL.YASA_PLContainer"
        EntitySetName="ContractorSet"
        Select="it.Id, it.Name"
        OrderBy="it.Name"
        >
   </asp:EntityDataSource>

            
                <br />

            <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="InsertHyperLink" runat="server" Action="Insert"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rekord</asp:DynamicHyperLink>
            </div>

          

             <br />
             <h2 class="DDSubHeader">Statystyki ocen</h2>
    <hr />
            <table class="DDGridView">
                <tr class="th">
                    <th scope="col" style="width:150px">
                        Cena
                    </th>
                    <th scope="col" style="width:150px">
                        Jakość
                    </th>
                      <th scope="col" style="width:150px">
                        Czas
                    </th>
                    <th scope="col">
                        Kontakt
                    </th>
                </tr>
                <tr class="td">
                    <td>
                         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                         <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                     <td>
                         <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                         <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

