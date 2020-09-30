<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="MojeZadania_zle.aspx.cs" Inherits="List" %>

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
                 <b>Szukaj:</b> <asp:TextBox ID="TBSearch" CssClass="DDTextBox" runat="server" OnTextChanged="DynamicFilter_FilterChanged"></asp:TextBox> 
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
                    <asp:SearchExpression DataFields="Title, Description" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
<asp:ControlParameter ControlID="TBSearch" />
                    </asp:SearchExpression>
                </asp:QueryExtender>

                <br />
              </div>
           <hr />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" EnablePersistedSelection="true" OnRowDataBound="GridView1_RowDataBound"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" AutoGenerateColumns="false" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                   <asp:DynamicField DataField="Id" /> 
                    <asp:DynamicField DataField="Title" />
                    <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="User_task" />
                     <asp:DynamicField DataField="User" />
                     <asp:DynamicField DataField="RequiredEndDate" />
                     <asp:DynamicField DataField="TaskStatus" />
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
                    Brak rekordów.
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:EntityDataSource ID="GridDataSource" runat="server" EnableDelete="true" />
            
            <asp:QueryExtender TargetControlID="GridDataSource" ID="GridQueryExtender" runat="server">
                <asp:DynamicFilterExpression ControlID="FilterRepeater" />
            </asp:QueryExtender>

            <br />

            <div class="DDBottomHyperLink">
                <asp:DynamicHyperLink ID="InsertHyperLink" runat="server" Action="Insert"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj zadanie</asp:DynamicHyperLink>
          <hr /> <br />
                Legenda:
                <br />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                <br />
                <asp:Panel ID="Panel1" runat="server" BackColor="Yellow" Height="16px" Width="314px">ZADANIA Z PRZEKROCZONYM TERMINEM UKOŃCZENIA
                </asp:Panel>
               
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

