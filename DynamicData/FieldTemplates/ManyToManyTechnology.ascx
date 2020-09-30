<%@ Control Language="C#" CodeFile="ManyToManyTechnology.ascx.cs" Inherits="ManyToManyField" %>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
       | &nbsp;<asp:DynamicHyperLink runat="server"></asp:DynamicHyperLink> | &nbsp;<br />
    </ItemTemplate>
</asp:Repeater>

