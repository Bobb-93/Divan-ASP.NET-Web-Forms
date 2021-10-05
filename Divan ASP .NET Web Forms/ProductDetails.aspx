<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:FormView ID="productDetail" runat="server" ItemType="Divan_ASP.NET_Web_Forms.Models.Product" SelectMethod="GetProduct" RenderOuterTable="false">
        <ItemTemplate>
            <div>
                <h1><%#: Item.ProductName %></h1>
            </div>
            <br />
            <table>
                <tr>
                    <td>
                        <img src="/Catalog/Images/Thumbs/<%#: Item.ImagePath %>"  style="border:solid; height:300px" alt="<%#: Item.ProductName %>" />
                    </td>
                    <td>&nbsp;</td>
                    <td style="vertical-align:top; text-align:left">
                        <b>Description:</b>
                        <br />
                        <%#: Item.Description %>
                        <br />
                        <span>
                            <b>Price:</b>&nbsp;
                            <%#:String.Format("{0:c}", Item.UnitPrice) %>
                        </span>
                        <br />
                        <%--<span>
                            <b>Product Number:</b>&nbsp;
                            <%#: Item.ProductID %>
                        </span>--%>
                        <br />
                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                        <span class="ProductListitems">
                                            <b>Add To Cart</b>
                                        </span>
                        </a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:FormView>
</asp:Content>
