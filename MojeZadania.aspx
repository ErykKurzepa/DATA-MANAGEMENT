<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="MojeZadania.aspx.cs" Inherits="List" %>

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

    <h2 class="DDSubHeader">Moje Zadania: </asp:Label></h2>
    <hr />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="DD">
        <b>Id:</b>   
<asp:TextBox CssClass="DDTextBox" ID="TextBoxId" runat="server" Width="50px"></asp:TextBox>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<b>Rekordy:</b> 
 <asp:TextBox ID="TBSearch" CssClass="DDTextBox" runat="server" ></asp:TextBox> 
 
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <b>Status realizacji:</b>  <asp:RadioButtonList AutoPostBack="true" RepeatLayout="flow" ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="Page_Init">
<asp:ListItem Value="1" Text="nie zakończone"></asp:ListItem>
<asp:ListItem Value="2" Text="anulowane"></asp:ListItem>
<asp:ListItem Value="3" Text="zakończone"></asp:ListItem>
   </asp:RadioButtonList>
                 
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableClientScript="true"
                    HeaderText="List of validation errors" CssClass="DDValidator" />
                <asp:DynamicValidator runat="server" ID="GridViewValidator" ControlToValidate="GridView1" Display="None" CssClass="DDValidator" />
     

                <asp:QueryExtender ID="QE1"  runat="server" TargetControlID="GridDataSource">
                    <asp:SearchExpression DataFields="Title, Description" ComparisonType="InvariantCultureIgnoreCase" SearchType="Contains">
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
                RowStyle-CssClass="td"  AutoGenerateColumns="false" HeaderStyle-CssClass="th" CellPadding="6">
                <Columns>
                   <asp:DynamicField DataField="Id" /> 
                    <asp:DynamicField DataField="Title" />
                    <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="StartDate" />
                    <asp:DynamicField DataField="RequiredEndDate" />
                     <asp:DynamicField DataField="TaskStatus" />
                    <asp:DynamicField DataField="Priorytet" />
                 <%--   <asp:DynamicField DataField="User_task" />--%>

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
 

            <br />

          <div class="DDBottomHyperLink">
                <asp:HyperLink ID="InsertHyperLink" runat="server" ><img runat="server" src="~/DynamicData/Content/Images/plus.gif" alt="Insert new item" />Dodaj zadanie</asp:HyperLink>
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

