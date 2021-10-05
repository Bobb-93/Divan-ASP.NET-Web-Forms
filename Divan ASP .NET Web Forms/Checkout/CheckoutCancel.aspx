<%@ Page Title="Checkout Cancel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutCancel.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Checkout.CheckoutCancel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Checkout Cancelled</h1>
    <br />
    <h3>Your purchase has been cancelled.</h3>
    <asp:Button ID="Continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" />
</asp:Content>
