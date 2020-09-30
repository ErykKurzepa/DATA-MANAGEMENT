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
     <asp:Label ID="Label1" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader"><%= table.DisplayName%></h2>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="DD">
                    <b>Id:</b>   
<asp:TextBox CssClass="DDTextBox" ID="TextBoxId" runat="server" Width="50px"></asp:TextBox>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Rekordy:</b> 
 <asp:TextBox ID="TBSearch" CssClass="DDTextBox" runat="server" ></asp:TextBox> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Filtry:</b> 
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
                    <asp:SearchExpression DataFields="Name, Description, Tool_Number" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
                    <asp:ControlParameter ControlID="TBSearch" />
                    </asp:SearchExpression>
                <asp:RangeExpression DataField="Id" 
              MaxType="Inclusive" MinType="Inclusive">
        <asp:ControlParameter ControlID="TextBoxId" />
     <asp:ControlParameter ControlID="TextBoxId" />
    </asp:RangeExpression>
 </asp:QueryExtender>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button runat="server" OnClick="DynamicFilter_FilterChanged"  Text="Szukaj"/>
<asp:Button runat="server" OnClick="clear_search"  Text="Wyczyść"/>

                <br />
              </div>
           <hr />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" EnablePersistedSelection="true"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView" AutoGenerateColumns="false"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                     <asp:DynamicField DataField="Id" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center"/>
                     <asp:DynamicField DataField="Tool_Number"/>         
                     <asp:DynamicField DataField="Name"/>
                    <asp:DynamicField DataField="Tool_Holder_System"/>
                     <asp:DynamicField DataField="Description"/>
                  <%--   <asp:DynamicField DataField="CNC_Machine" HeaderText="Maszyna"/>--%>
                    <asp:TemplateField ItemStyle-Width="80px">
                        <ItemTemplate >
                                 <asp:DynamicHyperLink runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <PagerStyle CssClass="DDFooter"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:EntityDataSource ID="GridDataSource" runat="server" EnableDelete="true" />
            
            <asp:QueryExtender TargetControlID="GridDataSource" ID="GridQueryExtender" runat="server">
                <asp:DynamicFilterExpression ControlID="FilterRepeater" />
            </asp:QueryExtender>

            <br />

            <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="InsertHyperLink" runat="server" Action="Insert"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj narzędzie</asp:DynamicHyperLink>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


     <asp:DynamicDataManager ID="DynamicDataManager2" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="GridView2" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Elementy Narzędzi</h2>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="DD">    <b>Id:</b>   
                 <asp:TextBox CssClass="DDTextBox" ID="TextBoxId2" runat="server" Width="50px"></asp:TextBox>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Rekordy:</b> 
 <asp:TextBox ID="TextBox2" CssClass="DDTextBox" runat="server" ></asp:TextBox> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Filtry:</b> 
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" EnableClientScript="true"
                    HeaderText="List of validation errors" CssClass="DDValidator" />
                <asp:DynamicValidator runat="server" ID="DynamicValidator1" ControlToValidate="GridView2" Display="None" CssClass="DDValidator" />
                <asp:QueryableFilterRepeater runat="server" ID="QueryableFilterRepeater1">
                    <ItemTemplate><span class="filter"> 
                        <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' OnPreRender="Label_PreRender" />
                        <asp:DynamicFilter runat="server" ID="DynamicFilter" OnFilterChanged="DynamicFilter_FilterChanged2" />|</span>
                    </ItemTemplate>
                </asp:QueryableFilterRepeater>
                <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
                    <asp:DynamicFilterExpression ControlID="QueryableFilterRepeater1" />
                    <asp:SearchExpression DataFields="Name, Description" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
                    <asp:ControlParameter ControlID="TextBox2" />
                    </asp:SearchExpression>
               <asp:RangeExpression DataField="Id" 
              MaxType="Inclusive" MinType="Inclusive">
        <asp:ControlParameter ControlID="TextBoxId2" />
     <asp:ControlParameter ControlID="TextBoxId2" />
    </asp:RangeExpression>
 </asp:QueryExtender>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Button runat="server" OnClick="DynamicFilter_FilterChanged2"  Text="Szukaj"/>
<asp:Button runat="server" OnClick="clear_search2"  Text="Wyczyść"/>

                <br />
              </div>
           <hr />
            <asp:GridView ID="GridView2" runat="server" DataSourceID="EntityDataSource1" EnablePersistedSelection="true"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" AutoGenerateColumns="false">
                 <Columns>
                      
                     <asp:DynamicField DataField="Id" HeaderText="Id Elementu" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center"/>
                      <asp:DynamicField DataField="Name" HeaderText="Nazwa"/>
                     <asp:DynamicField DataField="Description" HeaderText="Opis"/>
                     <asp:DynamicField DataField="Tool_Type" HeaderText="Rodzaj elementu"/>
                     <asp:DynamicField DataField="Contractor" HeaderText="Dostawca"/>
                     <asp:DynamicField DataField="Catalog_number" HeaderText="Numer katalogowy"/>
                    <asp:TemplateField ItemStyle-Width="80px">
                        <ItemTemplate >
                                 <asp:DynamicHyperLink runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

                <PagerStyle CssClass="DDFooter"/>        
                <PagerTemplate>
                    <asp:GridViewPager runat="server" />
                </PagerTemplate>
                <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:EntityDataSource ID="EntityDataSource1" runat="server" EnableDelete="true"  ContextTypeName="YASA_PL.YASA_PLContainer"
                EntitySetName="Tool_ElementSet" Include="Contractor, Tool_Type" />
            
            <asp:QueryExtender TargetControlID="EntityDataSource1" ID="QueryExtender2" runat="server">
                <asp:DynamicFilterExpression ControlID="QueryableFilterRepeater1" />
            </asp:QueryExtender>

            <br />

            <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Tool_ElementSet/Insert.aspx"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj element</asp:DynamicHyperLink> | &nbsp;
                <asp:DynamicHyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Tool_TypeSet/Insert.aspx"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Definiuj nowy Rodzaj Elementu</asp:DynamicHyperLink> | &nbsp;
                <br />

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>

