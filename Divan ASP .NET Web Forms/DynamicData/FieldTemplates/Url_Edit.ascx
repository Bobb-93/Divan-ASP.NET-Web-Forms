<%@ Control Language="C#" AutoEventWireup="true"  CodeBehind="Url_Edit.ascx.cs" Inherits="Divan_ASP.NET_Web_Forms.Url_EditField" %>


<asp:TextBox ID="TextBox1" runat="server" Text='<%# FieldValueEditString %>' Columns="10" TextMode="Url"></asp:TextBox>


<asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" Enabled="false" />
<asp:DynamicValidator runat="server" ID="DynamicValidator1" CssClass="DDControl DDValidator" ControlToValidate="TextBox1" Display="Static" />

