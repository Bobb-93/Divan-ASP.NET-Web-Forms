<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/ProductList.css" />

    <div id="CategoryMenu" style="text-align: center">
        <asp:ListView ID="categoryList" ItemType="Divan_ASP.NET_Web_Forms.Models.Category" runat="server" SelectMethod="GetCategories">
            <ItemTemplate>
                <b style="font-size: large; font-style: normal">
                    <%--<a href="/ProductList.aspx?id=<%#: Item.CategoryID %>">
                        <%#: Item.CategoryName %>
                    </a>--%>
                    <a href="<%#: GetRouteUrl("ProductsByCategoryRoute", new {categoryName = Item.CategoryName }) %>">
                        <%#: Item.CategoryName %>
                    </a>
                </b>
            </ItemTemplate>
            <ItemSeparatorTemplate>| </ItemSeparatorTemplate>
        </asp:ListView>
    </div>
    <section>
        <div>
            <hgroup>
                <h1><%: Title %></h1>
            </hgroup>
            <asp:ListView ID="productList" runat="server" DataKeyNames="ProductID" GroupItemCount="4" ItemType="Divan_ASP.NET_Web_Forms.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyDataTemplate>
                    <td />
                </EmptyDataTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <%--<a href="ProductDetails.aspx?productID=<%#:Item.ProductID %>"></a>--%>
                                    <a href="<%#: GetRouteUrl("ProductByNameRoute", new { productName = Item.ProductName }) %>">
                                    </a>
                                    <img src="/Catalog/Images/Thumbs/<%#: Item.ImagePath %>" width="100" height="75" style="border: solid" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <%--<a href="ProductDetails.aspx?productID=<%#: Item.ProductID %>">
                                        <span class="ProductName">
                                            <%#: Item.ProductName %>
                                        </span>
                                    </a>--%>
                                    <a href="<%#: GetRouteUrl("ProductByNameRoute", new { productName = Item.ProductName }) %>">
                                        <%#: Item.ProductName %>
                                    </a>
                                    <br />
                                    <span>
                                        <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                    </span>
                                    <br />
                                    <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                        <span class="ProductListitems">
                                            <b>Add To Cart</b>
                                        </span>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;
                                </td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
