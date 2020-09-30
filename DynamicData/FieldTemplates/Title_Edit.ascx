<%@ Control Language="C#" CodeFile="Title_Edit.ascx.cs" Inherits="Text_EditField" %>

<asp:TextBox ID="TextBox1" Width="423px" runat="server" Text='<%# FieldValueEditString %>' CssClass="DDTextBox"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" />

