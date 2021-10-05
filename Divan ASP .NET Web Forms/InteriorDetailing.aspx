<%@ Page Title="Interior Detailing" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InteriorDetailing.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Interior_Detailing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/TypesOfServices.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <%--<h1><%: Title %></h1>--%>
    <main>
        <section class="left section-1">
            <img src="/images/interior-detailing/floor-plan.jpg" alt="floor-plan">
            <h2><a id="floor-plan">Floor Plan Space Planning</a></h2>
            <p>Precise planning of the floor and the space</p>
        </section>
        <section class="right section-2">
            <img src="/images/interior-detailing/floor-plan-review.jpg" alt="floor-plan-review">
            <h2><a id="floor-plan-review">Floor plan review</a></h2>
            <p>We need to review every detail, in order to achieve perfection</p>
        </section>
        <section class="left section-3">
            <img src="/images/interior-detailing/ceiling-details.jpg" alt="ceiling-details">
            <h2><a id="ceiling-details">Reflected Ceiling details</a></h2>
            <p>Our ceiling plans are refined to the smallest detail</p>
        </section>
        <section class="right section-4">
            <img src="/images/interior-detailing/wall-elevations.jpg" alt="wall-elevations">
            <h2><a id="wall-elevations">Wall elevations</a></h2>
            <p>Our wall elevations are truly elevated</p>
        </section>
        <section class="left section-5">
            <img src="/images/interior-detailing/section-drawings.jpg" alt="section-drawings">
            <h2><a id="section-drawings">Section drawings</a></h2>
            <p>Our section drawings are precise and detailed</p>
        </section>
    </main>
    <asp:Button ID="Continue" runat="server" Text="Back to Services" OnClick="Continue_Click" Style="margin-left: 61em; margin-top:29.9em" />
</asp:Content>
