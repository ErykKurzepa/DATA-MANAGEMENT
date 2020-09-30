<%@ Page Language="C#" MasterPageFile="~/Site.master" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="headContent" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server" />
   

    <h2 class="DDSubHeader2">Bazodanowy System Zarządzania Dokumentacją Produkcyjną</h2>

    <br />
    <h4 class="DDSubHeader">Najnowsze powiadomienia</h4>
    
    <asp:DynamicDataManager runat="server">
        <DataControls>
            <asp:DataControlReference ControlID="GridViewNotificationSet" />
        </DataControls>
    </asp:DynamicDataManager>
    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
        ContextTypeName="YASA_PL.YASA_PLContainer" 
        EntitySetName="NotificationSet"
        Include="User, Customer_Part, Customer_product, NotificationStatus, NotyficationType"
        OrderBy="it.Id DESC">
    </asp:EntityDataSource>

    <asp:GridView ID="GridViewNotificationSet" runat="server"  AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6" PageSize="5"
        DataSourceID="EntityDataSource1" AutoGenerateColumns="false">
          <Columns>
           <asp:DynamicField DataField="Id" HeaderText="Numer Id"  ItemStyle-Width="50px" /> 
                    <asp:DynamicField DataField="Name" />
                    <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="NotyficationType" />
                    <asp:DynamicField DataField="User"  HeaderText="Opiekun powiadomienia"/>
                    <asp:DynamicField DataField="RequiredEndDate"  HeaderText="Wymagana<br> data ukończenia" />
                    <asp:DynamicField DataField="NotificationStatus" HeaderText="Status"/>
                    <asp:DynamicField DataField="Customer_Part" />
                    <asp:DynamicField DataField="Customer_product" />
                    <asp:TemplateField ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
              
        </Columns>
          <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
        </asp:GridView>
  
  <br />
    <h4 class="DDSubHeader">Najnowsze zadania</h4>
    
    <asp:DynamicDataManager runat="server">
        <DataControls>
            <asp:DataControlReference ControlID="GridView1" />
        </DataControls>
    </asp:DynamicDataManager>
    
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" 
        ContextTypeName="YASA_PL.YASA_PLContainer" 
        EntitySetName="TaskSet"
        Include="User, User_task, TaskStatus"
        OrderBy="it.Id DESC">
    </asp:EntityDataSource>

    <asp:GridView ID="GridView1" runat="server"  AllowPaging="True" AllowSorting="True" CssClass="DDGridView"
                RowStyle-CssClass="td" HeaderStyle-CssClass="th" CellPadding="6"
        DataSourceID="EntityDataSource2" AutoGenerateColumns="false">
          <Columns>
           <asp:DynamicField DataField="Id" HeaderText="Numer Id" ItemStyle-Width="50px"/> 
                    
                    <asp:DynamicField DataField="Title" />
                    <asp:DynamicField DataField="Description" />
                    <asp:DynamicField DataField="User_task" />
                     <asp:DynamicField DataField="User" />
                     <asp:DynamicField DataField="RequiredEndDate" />
                     <asp:DynamicField DataField="TaskStatus" />
                    <asp:TemplateField  ItemStyle-Width="50px">
                        <ItemTemplate>
                                 <asp:DynamicHyperLink runat="server" Text="Więcej"/>
                          <asp:DynamicHyperLink runat="server"  Text="więcej" ImageUrl="~/DynamicData/Content/Images/forward.gif"/>
                        </ItemTemplate>
                    </asp:TemplateField>
        </Columns>
          <EmptyDataTemplate>
                    Brak rekordów.
                </EmptyDataTemplate>
        </asp:GridView>
    <div class="footer">
         &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label runat="server" ID="footertext">

LEOPEK Eryk Kurzepa
ul. Zygmuntowska 10/4,39-300 Mielec, 
woj. Podkarpackie
Polska
Systemy Bazodanowe
Tel.: +48 503 787 129,
E-mail: database.systems@leopek.com



         </asp:Label>
            
        </div>
    </asp:Content>


