<%@ Control Language="C#" 
    CodeFile="DateRange.ascx.cs" 
    Inherits="CustomFilters.DateRangeFilter" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:TextBox 
    ID="txbDateFrom" 
    runat="server" 
    CssClass="DDFilter">
</asp:TextBox>
   <asp:ImageButton runat="Server" ID="ImageButton1" ImageUrl="~/images/calendar_logo.jpg" AlternateText="Click here to display calendar" Height="22px" Width="36px" CausesValidation="False" ImageAlign="AbsBottom" />
<asp:CalendarExtender PopupButtonID="ImageButton1" TargetControlID="txbDateFrom" ID="CalendarExtender1" runat="server" ></asp:CalendarExtender>


do
<asp:TextBox 
    ID="txbDateTo" 
    runat="server" 
    CssClass="DDFilter" OnTextChanged="txbDateTo_TextChanged" AutoPostBack="true">
</asp:TextBox>
<asp:ImageButton runat="Server" ID="ImageButton2" ImageUrl="~/images/calendar_logo.jpg" AlternateText="Click here to display calendar" Height="22px" Width="36px" CausesValidation="False" ImageAlign="AbsBottom" />
<asp:CalendarExtender PopupButtonID="ImageButton2" TargetControlID="txbDateTo" ID="CalendarExtender2" runat="server" ></asp:CalendarExtender>

<%--<asp:Button 
    ID="btnRangeButton" 
    CssClass="DDFilter"
    runat="server" 
    Text="Filter" 
    OnClick="btnRangeButton_Click" />
<asp:Button 
    ID="btnClear" 
    CssClass="DDFilter"
    runat="server" 
    Text="Clear" 
    OnClick="btnRangeButton_Click" />--%>