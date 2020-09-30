﻿<%@ Control
    Language="C#"
    AutoEventWireup="true"
    CodeFile="FileUpload_Insert.ascx.cs"
    Inherits="FileImage_Edit" %>
   
<asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
    <asp:Label ID="Label1" runat="server" Text="<%# FieldValueString %>"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" ></asp:HyperLink>&nbsp;
</asp:PlaceHolder>
<asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;
<asp:CustomValidator
    ID="CustomValidator1"
    runat="server"
    CssClass="DDControl DDValidator"
    Display="Static"
    Enabled="true"
    ErrorMessage="">
</asp:CustomValidator>
<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="FileUpload1" Display="Static" Enabled="true" ErrorMessage="Prosze wskazać plik" />



