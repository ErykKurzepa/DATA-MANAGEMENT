<%@ Control Language="C#" CodeFile="ManyToMany.ascx.cs" Inherits="ManyToManyField" %>

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
      <asp:DynamicHyperLink runat="server"></asp:DynamicHyperLink> | &nbsp;
    </ItemTemplate>
</asp:Repeater>

