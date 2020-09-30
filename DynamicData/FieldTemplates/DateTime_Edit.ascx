<%@ Control Language="C#" CodeFile="DateTime_Edit.ascx.cs" Inherits="DateTime_EditField" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:TextBox ID="TextBox1" runat="server" CssClass="DDTextBox" Text='<%# FieldValueEditString %>' Columns="20" TextMode="DateTime"></asp:TextBox>


   <asp:ImageButton runat="Server" ID="ImageButton1" ImageUrl="~/images/calendar_logo.jpg" AlternateText="Click here to display calendar" Height="22px" Width="36px" CausesValidation="False" ImageAlign="AbsBottom" />
<asp:CalendarExtender PopupButtonID="ImageButton1" TargetControlID="TextBox1" ID="CalendarExtender1" runat="server" ></asp:CalendarExtender>
   



<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" />
<asp:CustomValidator runat="server" ID="DateValidator" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" EnableClientScript="false" Enabled="false" OnServerValidate="DateValidator_ServerValidate" />

