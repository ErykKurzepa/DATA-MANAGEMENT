<%@ Control Language="C#" CodeFile="UniqueCustomerName_Edit.ascx.cs" Inherits="UniqueName_EditField" %>

<asp:TextBox ID="TextBox1" Width="423px" runat="server" Text='<%# FieldValueEditString %>'  CssClass="DDTextBox" OnTextChanged="IsUserNameUnique" AutoPostBack="true"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="False" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static"  />

