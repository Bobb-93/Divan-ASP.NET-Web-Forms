<%@ Page Title="Divan" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Default.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="News">News</a></li>
            <li><a href="AboutUs">About us</a></li>
            <li id="services"><a href="Services">Services</a>
                <ul>
                    <li class="box index-box" id="consulting"><a href="Consulting">Consulting</a></li>
                    <li class="box index-box" id="furnishing"><a href="Furnishing">Furnishing</a></li>
                    <li class="box index-box" id="procurement"><a href="Procurement">Procurement</a></li>
                    <li class="box index-box" id="interior-detailing"><a href="InteriorDetailing">Interior Detailing</a></li>
                </ul>
            </li>
            <li><a href="ProductList">Products</a></li>
            <li><a href="Gallery">Gallery</a></li>
            <li><a href="Contact">Contact</a></li>
        </ul>
    </nav>

    <div id="social-media">
        <a href="#"><i class="fab fa-facebook-square"></i></a>
        <a href="#"><i class="fab fa-twitter-square"></i></a>
        <a href="#"><i class="fab fa-pinterest-square"></i></a>
        <br>
        <a href="#"><i class="fab fa-youtube-square"></i></a>
        <a href="#"><i class="fab fa-google-plus-square"></i></a>
        <a href="#"><i class="fab fa-instagram-square"></i></a>
    </div>
    <div>
        <div id="discover-more"></div>
        <div id="down-red-arrow"></div>
    </div>

</asp:Content>
