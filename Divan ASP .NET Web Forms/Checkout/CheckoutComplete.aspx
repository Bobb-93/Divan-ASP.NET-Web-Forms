<%@ Page Title="Checkout Complete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutComplete.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Checkout.CheckoutComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="text-align:center"><%: Title %></h1>
    <br />
    <h3>Payment Transaction ID:</h3> <asp:Label ID="TransactionId" runat="server"></asp:Label>
    <p></p>
    <h3>Thank You!</h3>
    <br />
    <hr />
    <asp:Button ID="Continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" />
</asp:Content>
