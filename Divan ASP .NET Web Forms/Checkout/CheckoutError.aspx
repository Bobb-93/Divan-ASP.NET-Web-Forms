<%@ Page Title="Checkout Error" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CheckoutError.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Checkout.CheckoutError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>><%: Title %></h1>
    <br />
    <table id="ErrorTable">
        <tr>
            <td class="field"></td>
            <td><%=Request.QueryString.Get("ErrorCode")%></td>
        </tr>
        <tr>
            <td class="field"></td>
            <td><%=Request.QueryString.Get("Desc")%></td>
        </tr>
        <tr>
            <td class="field"></td>
            <td><%=Request.QueryString.Get("Desc2")%></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" />
</asp:Content>
