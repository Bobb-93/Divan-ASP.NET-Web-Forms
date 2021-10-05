<%@ Page Title="Services" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/Pages.css" />
    <link rel="stylesheet" runat="server" href="/Styles/Services.css" />
    <h1><%: Title %></h1>

    <div> 
        <div class="background-image" id="leftmost"></div>
        <div class="background-image" id="center"></div>
        <div class="background-image" id="rightmost"></div>
    </div>

    <main>
        <p>We are proud to assure our clients that here at Divan we offer the whole package of services related to any Interior Design project.<br> Wether you want us to help you design your own pool, or do the remodelling and designing of your new home or office space<br> we will be there for you to deliver. Our services consist of the following:</p>
            <div id="lists-of-services">
                <div class="type-of-service" id="consulting-div">
                    <h2 id="consulting-heading"><a href="Consulting">Consulting</a></h2>
                    <ul>
                        <li><a href="Consulting#architects">Architects</a></li>
                        <li><a href="Consulting#builders">Builders</a></li>
                        <li><a href="Consulting#millwork">Millwork</a></li>
                        <li><a href="Consulting#lighting-specialists">Lighting Specialists</a></li>
                        <li><a href="Consulting#landscape-architects">Landscape Architects</a></li>
                    </ul>
                </div>
                <div class="type-of-service" id="furnishing-div">
                    <h2 id="furnishing-heading"><a href="Furnishing">Furnishing</a></h2>
                    <ul>
                        <li><a href="Furnishing#case-goods">Case goods</a></li>
                        <li><a href="Furnishing#lighting">Lighting</a></li>
                        <li><a href="Furnishing#artwork-and-sculpture">Artwork and Sculpture</a></li>
                        <li><a href="Furnishing#greenery">Greenery</a></li>
                        <li><a href="Furnishing#accessories">Accessories</a></li>
                    </ul>
                </div>
                <div class="type-of-service" id="procurement-div">
                    <h2 id="procurement-heading"><a href="Procurement">Procurement</a></h2>
                    <ul>
                        <li><a href="Procurement#in-house">All work is done 'in-house'</a></li>
                        <li><a href="Procurement#quality-controls">Quality Controls</a></li>
                        <li><a href="Procurement#senior-designers">Oversight by Senior Designers</a></li>
                        <li><a href="Procurement#competive-pricing">Competitive pricing</a></li>
                        <li><a href="Procurement#upon-competition">Walk through upon competition</a></li>
                    </ul>
                </div>
                <div class="type-of-service" id="interior-detailing-div">
                    <h2 id="interior-detailing-heading"><a href="InteriorDetailing">Interior Detailing</a></h2>
                    <ul>
                        <li><a href="InteriorDetailing#floor-plan">Floor Plan Space Planning</a></li>
                        <li><a href="InteriorDetailing#floor-plan-review">Floor plan review</a></li>
                        <li><a href="InteriorDetailing#ceiling-details">Reflected Ceiling details</a></li>
                        <li><a href="InteriorDetailing#wall-elevations">Wall elevations</a></li>
                        <li><a href="InteriorDetailing#section-drawings">Section drawings</a></li>
                    </ul>
                </div>
            </div>
        </main>
</asp:Content>
