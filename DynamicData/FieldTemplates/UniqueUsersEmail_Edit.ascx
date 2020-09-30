<%@ Control Language="C#" CodeFile="UniqueUsersEmail_Edit.ascx.cs" Inherits="UniqueName_EditField" %>

<asp:TextBox ID="TextBox1" runat="server" Text='<%# FieldValueEditString %>'  CssClass="DDTextBox" OnTextChanged="IsUserNameUnique" AutoPostBack="true" Width="180px"></asp:TextBox>

<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server"  ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false"  />
<asp:RegularExpressionValidator runat="server"  ID="RegularExpressionValidator2" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false"  />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static"  />

