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
                  <b>Id:</b>   
<asp:TextBox CssClass="DDTextBox" ID="TextBoxId" runat="server" Width="50px"></asp:TextBox>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Rekordy:</b> 
 <asp:TextBox ID="TBSearch" CssClass="DDTextBox" runat="server" ></asp:TextBox> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Filtry:</b> 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="Lista błędów: " CssClass="DDValidator" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" CssClass="DDValidator" />
                <asp:QueryableFilterRepeater runat="server" ID="FilterRepeater">
                    <ItemTemplate><span class="filter"> 
                        <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' OnPreRender="Label_PreRender" />
                        <asp:DynamicFilter runat="server" ID="DynamicFilter" OnFilterChanged="DynamicFilter_FilterChanged" />|</span>
                    </ItemTemplate>
                </asp:QueryableFilterRepeater>
                <asp:QueryExtender ID="QE1" runat="server" TargetControlID="GridDataSource">
                    <asp:DynamicFilterExpression ControlID="FilterRepeater" />
                    <asp:SearchExpression DataFields="F_Name, L_Name, Email, Description, M_Phone_No, W_Phone_No" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
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
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" AutoGenerateColumns="false" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                     <asp:DynamicField DataField="Id" />
                     <asp:DynamicField DataField="F_Name" />
                    <asp:DynamicField DataField="L_Name" />
                    <asp:DynamicField DataField="Position" />
                    <asp:DynamicField DataField="Department" />
                    <asp:DynamicField DataField="Email" />
                    <asp:DynamicField DataField="W_Phone_No" />
                    <asp:DynamicField DataField="M_Phone_No" />
                    <asp:TemplateField>
                        <ItemTemplate>
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
                    There are currently no items in this table.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:EntityDataSource ID="GridDataSource" runat="server" EnableDelete="true" />
            
            <asp:QueryExtender TargetControlID="GridDataSource" ID="GridQueryExtender" runat="server">
                <asp:DynamicFilterExpression ControlID="FilterRepeater" />
            </asp:QueryExtender>

            <br />

            <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="InsertHyperLink" runat="server" Action="Insert"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj pracownika</asp:DynamicHyperLink> |
                     <asp:DynamicHyperLink ID="HyperLink1" runat="server" ><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj dział</asp:DynamicHyperLink> |
            <asp:DynamicHyperLink ID="HyperLink2" runat="server" ><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj stanowisko</asp:DynamicHyperLink> |
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

