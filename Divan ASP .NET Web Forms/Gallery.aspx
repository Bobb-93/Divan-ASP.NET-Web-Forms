<%@ Page Title="Gallery" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Gallery.css" />

    <h1><%: Title %></h1>
    <main>        
        <h2 id="image-header">WHITE WASHED FLOOR</h2>
        <div class="arrow left-arrow"></div>
        <div id="focused-image">
            <img src="/images/gallery/white-washed-floors.png" alt="White Washed Floor">
        </div>
        <div class="arrow right-arrow"></div>
        <div class="image rectangle" id="white-washed-floors">
            <img src="/images/gallery/white-washed-floors.png" alt="White Washed Floor">
        </div>
        <div class="image rectangle" id="living-room">
            <img src="/images/gallery/Photos-Of-Modern-Living-Room-Interior-Design-Ideas-10.png" alt="Modern Living Room">
        </div>
        <div class="image bottom-image rectangle" id="scandinavian-design">
            <img src="/images/gallery/Scandinavian-Design-10.png" alt="Scandinavian Design">
        </div>
        <div class="image bottom-image rectangle" id="home-interior">
            <img src="/images/gallery/modern-home-interior.png" alt="Modern home Interior">
        </div>
        <div class="image bottom-image rectangle" id="alpine">
            <img src="/images/gallery/hotel-lounge-alpine.png" alt="Hotel Lounge Alpine">
        </div>
        <div class="image bottom-image rectangle" id="summer-home-1">
            <img src="/images/gallery/summer-home-1.png" alt="Summer Home I">
        </div>
        <div class="image bottom-image rectangle" id="summer-home-2">
            <img src="/images/gallery/summer-home-2.png" alt="Summer Home II">
        </div>
        <div class="image bottom-image rectangle" id="dining-table">
            <img src="/images/gallery/scandinavian-design-dining-table-with-chairs.png" alt="Dining Table with Chairs">
        </div>
        <div class="image bottom-image rectangle" id="desk">
            <img src="/images/gallery/desk.png" alt="Desk">
        </div>
        <div class="image bottom-image rectangle" id="rustic-kitchen">
            <img src="/images/gallery/rustic-kitchen.png" alt="Rustic Kitchen">
        </div>
        <div class="image bottom-image rectangle" id="greenhouse">
            <img src="/images/gallery/greenhouse.png" alt="Greenhouse">
        </div>
        <div class="image bottom-image rectangle" id="kitchen-idea">
            <img src="/images/gallery/Small-Scandinavian-kitchen-idea.png" alt="Scandinavian Kitchen Idea">
        </div>
        <div class="image bottom-image rectangle" id="garden">
            <img src="/images/gallery/garden.png" alt="garden">
        </div>
        <div class="image rectangle" id="bedroom">
            <img src="/images/gallery/bedroom.png" alt="Bedroom">
        </div>
        <div class="image rectangle" id="pool">
            <img src="/images/gallery/pool.png" alt="Pool">
        </div>
    </main>
    <script src="/Scripts/Gallery.js"></script>
</asp:Content>
