<%@ Control 
    Language="C#" 
    AutoEventWireup="true"
    CodeFile="Password_Edit.ascx.cs" 
    Inherits="Password_EditField" %>

     
<asp:TextBox
    ID="TextBox1"
    runat="server"
    Text='<%# FieldValueEditString %>'
    TextMode="Password"
    CssClass="DDTextBox"
   
    >
</asp:TextBox>




<asp:HiddenField
    ID="HiddenField1"
    runat="server"
    Value='<%# FieldValueEditString %>' />
<asp:CompareValidator
    ID="CompareValidator1"
    runat="server"
    ControlToValidate="TextBox1"
    ControlToCompare="TextBox2"
    EnableClientScript="true"
    SetFocusOnError="True"
    Text="*" />
<asp:RequiredFieldValidator
    runat="server"
    ID="RequiredFieldValidator1"
    CssClass="DDTextBox"
    ControlToValidate="TextBox1"
    Display="Dynamic"
    Enabled="false"
    
    Text="*" />
<asp:RegularExpressionValidator
    runat="server"
    ID="RegularExpressionValidator1"
    CssClass="DDTextBox"
    ControlToValidate="TextBox1"
    Display="Dynamic"
    Enabled="false"
    Text="*" />
<asp:DynamicValidator
    runat="server"
    ID="DynamicValidator1"
    CssClass="droplist"
    ControlToValidate="TextBox1"
    Display="Dynamic"
    
    Text="*" />
 
 
<asp:TextBox
    ID="TextBox2"
    runat="server"
    TextMode="Password"
   CssClass="DDTextBox">
</asp:TextBox>