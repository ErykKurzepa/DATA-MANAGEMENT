<%@ Control Language="C#" CodeFile="TextReadOnly_Edit.ascx.cs" Inherits="Text_EditField" %>

<asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" Text='<%# FieldValueEditString %>' CssClass="DDTextBox" BackColor="Silver" Width="180px"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" />

