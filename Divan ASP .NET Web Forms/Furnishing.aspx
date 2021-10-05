<%@ Page Title="Furnishing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Furnishing.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Furnishing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/TypesOfServices.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <%--<h1><%: Title %></h1>--%>
    <main>
        <section class="left section-1">
            <img src="/images/furnishing/case-goods.jpg" alt="case-goods">
            <h2><a id="case-goods">Case goods</a></h2>
            <p>We offer a variety of high quality case goods</p>
        </section>
        <section class="right section-2">
            <img src="/images/furnishing/lighting.jpg" alt="lighting">
            <h2><a id="lighting">Lighting</a></h2>
            <p>We offer high variety of furniture lights</p>
        </section>
        <section class="left section-3">
            <img src="/images/furnishing/artwork-and-sculpture.jpg" alt="artwork-and-sculpture">
            <h2><a id="artwork-and-sculpture">Artwork and Sculpture</a></h2>
            <p>Inspiring artwork and marvelous sculptures for your home</p>
        </section>
        <section class="right section-4">
            <img src="/images/furnishing/greenery.jpg" alt="greenery">
            <h2><a id="greenery">Greenery</a></h2>
            <p>Versatile greenery for you backyard</p>
        </section>
        <section class="left section-5">
            <img src="/images/furnishing/accessories.jpg" alt="accessories">
            <h2><a id="accessories">Accessoriess</a></h2>
            <p>Express yourself with our accessories</p>
        </section>
    </main>
    <asp:Button ID="Continue" runat="server" Text="Back to Services" OnClick="Continue_Click" Style="margin-left: 61em; margin-top:29.9em" />
</asp:Content>
