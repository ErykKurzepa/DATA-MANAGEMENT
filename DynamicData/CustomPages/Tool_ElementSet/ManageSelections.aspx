<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="ManageSelections.aspx.cs" Inherits="List" %>

<%@ Register src="~/DynamicData/Content/GridViewPager.ascx" tagname="GridViewPager" tagprefix="asp" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DynamicDataManager ID="DynamicDataManager1" runat="server" AutoLoadForeignKeys="true">
        <DataControls>
            <asp:DataControlReference ControlID="GridView1" />
        </DataControls>
    </asp:DynamicDataManager>

    <h2 class="DDSubHeader">Wybierz Elementy Narzędzi</h2>
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
                    <asp:SearchExpression DataFields="Name, Description" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
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
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" EnablePersistedSelection="true" OnRowDataBound="GridView1_RowDataBound"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" AutoGenerateColumns="false">
                 <Columns>
                      <asp:TemplateField HeaderText="Wybór" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center">
                          <ItemTemplate>
                             <asp:CheckBox runat="server" ID="checkadd" />
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:TemplateField HeaderText="Id 2" ItemStyle-Width="30px" ItemStyle-HorizontalAlign="Center" Visible="false">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="Label_id" Text='<%# Eval("Id") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:DynamicField DataField="Id" HeaderText="Id elementu" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center"/>
                      <asp:DynamicField DataField="Name" HeaderText="Nazwa elementu"/>
                     <asp:DynamicField DataField="Description" HeaderText="Opis elementu"/>
                     <asp:DynamicField DataField="Tool_Type" HeaderText="Typ elementu"/>
                     <asp:DynamicField DataField="Contractor" HeaderText="Dostawca"/>
                     <asp:DynamicField DataField="Catalog_number" HeaderText="Numer katalogowy"/>
                   
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
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Zatwierdź</asp:LinkButton> | &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Anuluj</asp:LinkButton> 
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

