<%@ Page Title="Consulting" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consulting.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Consulting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/TypesOfServices.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <%--<h1><%: Title %></h1>--%>
    <main>
        <section class="left section-1">
            <img src="/images/consulting/architects.jpg" alt="architects">
            <h2><a id="architects">Architects</a></h2>
            <p>We have contacts with some of the best architects in Europe</p>
        </section>
        <section class="right section-2">
            <img src="/images/consulting/builders.jpg" alt="builders">
            <h2><a id="builders">Builders</a></h2>
            <p>Our builders have experience with hard projects</p>
        </section>
        <section class="left section-3">
            <img src="/images/consulting/millwork.jpg" alt="millwork">
            <h2><a id="millwork">Millwork</a></h2>
            <p>We offer millwork with the finest quality</p>
        </section>
        <section class="right section-4">
            <img src="/images/consulting/lighting-specialists.jpg" alt="lighting-specialists">
            <h2><a id="lighting-specialists">Lighting Specialists</a></h2>
            <p>Our lighting specialists are experts at their field</p>
        </section>
        <section class="left section-5">
            <img src="/images/consulting/landscape-architects.jpg" alt="landscape-architects">
            <h2><a id="landscape-architects">Landscape Architects</a></h2>
            <p>Our landscape architects are experienced and are inspired to work</p>
        </section>
    </main>
    <asp:Button ID="Continue" runat="server" Text="Back to Services" OnClick="Continue_Click" Style="margin-left: 61em; margin-top:29.9em" />
</asp:Content>
