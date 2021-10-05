<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <link rel="stylesheet" runat="server" href="/Styles/AboutUs.css" />

    <h1><%: Title %></h1>
    <main>
        <div id="pia">
                <img src="/images/about-us/designer-pia.png" alt="designer pia">
                <h2>pia TORNELL</h2>
                <h3>Sales Director</h3>
                <p><a href="mailto:pia@divan.se">pia@divan.se</a></p>
                <div>
                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
            <div id="matthieu">
                <img src="/images/about-us/designer-mathieu.png" alt="designer mathieu">
                <h2>matthieu TONNESEN</h2>
                <h3>Marketing Director</h3>
                <p><a href="mailto:matthieu@divan.se">matthieu@divan.se</a></p>
                <div>
                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
            <div id="matz">
                <img src="/images/about-us/designer-matz.png" alt="designer matz">
                <h2>matz BERGSTROM</h2>
                <h3>Brand Manager</h3>
                <p><a href="mailto:matz@divan.se">matz@divan.se</a></p>
                <div>
                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
            <div id="marianne">
                <img src="/images/about-us/designer-marianne.png" alt="designer marianne">
                <h2>marianne ABBELSON</h2>
                <h3>Art Director</h3>
                <p><a href="mailto:marianne@divan.se">marianne@divan.se</a></p>
                <div>
                    <a href="#"><i class="fab fa-facebook-square"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                </div>
            </div>
        </main>
</asp:Content>
