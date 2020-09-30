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
    <asp:Label ID="Label4" runat="server" Text="" CssClass="DDValidator_Center"></asp:Label>
    <h2 class="DDSubHeader"><%= table.DisplayName%></h2>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="DD">
                 <table><tr><td> <b>Id:</b>   </td><td>
<asp:TextBox CssClass="DDTextBox" ID="TextBoxId" runat="server" Width="50px"></asp:TextBox>
 </td></tr><tr><td>
<b>Rekordy:</b> </td><td>
 <asp:TextBox ID="TBSearch" CssClass="DDTextBox" runat="server" ></asp:TextBox> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  </td></tr><tr><td> <br /><b>Filtry:</b>  </td><td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="List of validation errors" CssClass="DDValidator" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" CssClass="DDValidator" />
                <asp:QueryableFilterRepeater runat="server" ID="FilterRepeater">
                    <ItemTemplate><span class="filter"> 
                        <asp:Label runat="server" Text='<%# Eval("DisplayName") %>' OnPreRender="Label_PreRender" />
                        <asp:DynamicFilter runat="server" ID="DynamicFilter"/>|</span>
                    </ItemTemplate>
                </asp:QueryableFilterRepeater>
                <asp:QueryExtender ID="QE1" runat="server" TargetControlID="GridDataSource">
                    <asp:DynamicFilterExpression ControlID="FilterRepeater" />
                    <asp:SearchExpression DataFields="Title, Description" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
<asp:ControlParameter ControlID="TBSearch" />
                    </asp:SearchExpression>
               <asp:RangeExpression DataField="Id" 
              MaxType="Inclusive" MinType="Inclusive">
        <asp:ControlParameter ControlID="TextBoxId" />
     <asp:ControlParameter ControlID="TextBoxId" />
    </asp:RangeExpression>
 </asp:QueryExtender></td></tr></table>   
             <p></p>
 <asp:Button runat="server"  Text="Szukaj" UseSubmitBehavior="true"/>
<asp:Button runat="server" OnClick="clear_search"  Text="Wyczyść"/>

                <br />
              </div>
           <hr />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="GridDataSource" EnablePersistedSelection="true"
                AllowPaging="True" AllowSorting="True" CssClass="DDGridView" AutoGenerateColumns="false"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                     <asp:DynamicField DataField="Id" HeaderText="Id" />
                    <asp:DynamicField DataField="Article_type" />
                     <asp:DynamicField DataField="Title" />
                     <asp:DynamicField DataField="Description" />
                    <asp:TemplateField HeaderText="Cena całkowita<br> netto [PLN]">
                          <ItemTemplate>
                             <asp:Label runat="server" ID="TPrice" Text='<%#Eval("Total_price") %>'/>
                          </ItemTemplate>
                      </asp:TemplateField> 
                     <asp:DynamicField DataField="Contractor" />
                    <asp:DynamicField DataField="Date_created_modified" />
                    <asp:DynamicField DataField="Date_delivered" />
                    <asp:DynamicField DataField="User" />
                     
                    
                    
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
                <asp:DynamicHyperLink ID="InsertHyperLink" runat="server" Action="Insert"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rekord</asp:DynamicHyperLink> | &nbsp;
                 <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Article_typeSet/Insert.aspx"><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj rodzaj artykułów</asp:HyperLink> | &nbsp;
            </div>
            <br />
             <h2 class="DDSubHeader">Statystyki zamówień</h2>
    <hr />
            <table class="DDGridView">
                <tr class="th">
                    <th scope="col" style="width:150px">
                        Ilość zamówień
                    </th>
                    <th scope="col" style="width:250px">
                        Wartość zamówień [PLN]
                    </th>
                    <th scope="col">
                        Średnia wartość zamówień [PLN]
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
                </tr>
            </table>
           
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

