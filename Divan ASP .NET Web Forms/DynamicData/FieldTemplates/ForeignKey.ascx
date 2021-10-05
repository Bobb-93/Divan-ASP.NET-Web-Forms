<%@ Control Language="C#" CodeBehind="ForeignKey.ascx.cs" Inherits="Divan_ASP.NET_Web_Forms.ForeignKeyField" %>

<asp:HyperLink ID="HyperLink1" runat="server"
    Text="<%# GetDisplayString() %>"
    NavigateUrl="<%# GetNavigateUrl() %>"  />

