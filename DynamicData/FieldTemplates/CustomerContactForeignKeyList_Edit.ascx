<%@ Control Language="C#" CodeFile="CustomerContactForeignKeyList_Edit.ascx.cs" Inherits="ForeignKeyList_EditField" %>

<asp:ListBox runat="server" ID="lb1" CssClass="DDListBox">
</asp:ListBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="lb1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="lb1" Display="Static" />

