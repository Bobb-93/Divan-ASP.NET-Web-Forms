<%@ Page Title="News" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/News.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />

    <h1><%: Title %></h1>
    <main>
        <article id="leftmost">
            <a href="#"><img src="/images/news/greenhouse.png" alt="greenhouse"></a>
            <header>
                <a href="#"><h2 class="bottom-heading">Greenhouse</h2></a>
                <a href="#"><p>A room within a<br> room for nature</p></a>
            </header>
        </article>
        <article>
            <a href="#"><img src="/images/news/vase.png" alt="vase"></a>
            <header>
                <a href="#"><h2 class="top-heading">New objects</h2></a>
                <a href="#"><p class="top-paragraph">A series of small objects<br> designed by Anna Kraitz</p></a>
            </header>
        </article>
        <article id="rightmost">
            <a href="#"><img src="/images/news/nightlight.png" alt="nightlight"></a>
            <header>
                <a href="#"><h2 class="bottom-heading">Project lights</h2></a>
                <a href="#"><p>Newborn designs by Pia<br> Tornell</p></a>
            </header>
        </article>
    </main>
</asp:Content>
