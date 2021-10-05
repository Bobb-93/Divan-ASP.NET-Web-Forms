<%@ Page Title="Procurement" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Procurement.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Procurement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/TypesOfServices.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <%--<h1><%: Title %></h1>--%>
    <main>
        <section class="left section-1">
            <img src="/images/procurement/in-house.jpg" alt="in-house">
            <h2><a id="in-house">All work is done 'in-house'</a></h2>
            <p>Our specialists are always ready to come to the client's home</p>
        </section>
        <section class="right section-2">
            <img src="/images/procurement/quality-controls.jpg" alt="quality-controls">
            <h2><a id="quality-controls">Quality controls</a></h2>
            <p>We settle only for the best quality</p>
        </section>
        <section class="left section-3">
            <img src="/images/procurement/senior-designers.jpg" alt="senior-designers">
            <h2><a id="senior-designers">Oversight by Senior Designers</a></h2>
            <p>Our more experienced designers are watching over the work</p>
        </section>
        <section class="right section-4">
            <img src="/images/procurement/competive-pricing.jpg" alt="competive-pricing">
            <h2><a id="competive-pricing">Competitive pricing</a></h2>
            <p>We care for our clients and their needs</p>
        </section>
        <section class="left section-5">
            <img src="/images/procurement/upon-competition.jpg" alt="upon-competition">
            <h2><a id="upon-competition">Walk through upon competition</a></h2>
            <p>We make sure our clients are happy with what they've got</p>
        </section>
    </main>
    <asp:Button ID="Continue" runat="server" Text="Back to Services" OnClick="Continue_Click" Style="margin-left: 61em; margin-top:29.9em" />
</asp:Content>
