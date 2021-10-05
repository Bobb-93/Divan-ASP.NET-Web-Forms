<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Contact.css" />

    <h1><%: Title %></h1>
 
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2932.5276661673083!2d23.32864771546683!3d42.692546679165986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40aa85747704b16b%3A0x9861fd1db7aef08f!2sul.%20%22Tsar%20Ivan%20Shishman%22%2012%2C%201000%20Sofia%20Center%2C%20Sofia!5e0!3m2!1sen!2sbg!4v1607180372631!5m2!1sen!2sbg" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">
    </iframe>

    <address>
        <a href="mailto:divanstudio@divan.se">divanstudio@divan.se</a>
        <br>
        ul."Tsar Shishman" 12
        <br>
        1000 Sofia, Bulgaria
        <br>
        02/77755529
        <br>
        <a href="tel:+359-899-777-777">+359-899-777-777</a>
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:support@divan.se">support@divan.se</a><br />
        <strong>Marketing:</strong> <a href="mailto:marketing@divan.se">marketing@divan.se</a>
    </address>

    <a href="#"><i class="fab fa-facebook-square"></i></a>
    <a href="#"><i class="fab fa-linkedin"></i></a>
    <a href="#"><i class="fab fa-tumblr-square"></i></a>
    <a href="#"><i class="fab fa-youtube-square"></i></a>
    <a href="#"><i class="fab fa-google-plus-square"></i></a>
</asp:Content>
