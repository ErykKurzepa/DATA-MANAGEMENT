<%@ Control Language="C#" CodeFile="CustomerContactForeignKeyList.ascx.cs" Inherits="ForeignKeyListField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

