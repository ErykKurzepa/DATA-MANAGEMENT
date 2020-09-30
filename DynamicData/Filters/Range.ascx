<%@ Control Language="C#" 
    CodeFile="Range.ascx.cs" 
    Inherits="CustomFilters.RangeFilter" %>

<asp:TextBox 
    ID="txbFrom" 
    runat="server" 
    CssClass="DDFilter">
</asp:TextBox>
do
<asp:TextBox 
    ID="txbTo" 
    runat="server" 
    CssClass="DDFilter">
</asp:TextBox>
<asp:Button 
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
    OnClick="btnRangeButton_Click" />