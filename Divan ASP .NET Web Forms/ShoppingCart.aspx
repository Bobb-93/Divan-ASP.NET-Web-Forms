<%@ Page Title="Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Divan_ASP.NET_Web_Forms.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" runat="server" href="/Styles/ShoppingCart.css" />
    <div id="ShoppingCartTitle" runat="server" class="ContentHead">
        <h1>Shopping Cart</h1>
    </div>
    <asp:GridView ID="CartList" runat="server" AutoGenerateColumns="false" ShowFooter="true" GridLines="Vertical" CellPadding="4" ItemType="Divan_ASP.NET_Web_Forms.Models.CartItem" SelectMethod="GetShoppingCartItems" CssClass="table table-striped table-bordered">
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ID" SortExpression="ProductID" />
            <asp:BoundField DataField="Product.ProductName" HeaderText="Name" />
            <asp:BoundField DataField="Product.UnitPrice" HeaderText="Price (each) " DataFormatString="{0:c}" />
            <asp:TemplateField HeaderText="Quantity">
                <ItemTemplate>
                    <asp:TextBox ID="PurchaseQuantity" Width="40" runat="server" Text="<%#:Item.Quantity %>" type="number" min="0">
                    </asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Item Total">
                <ItemTemplate>
                    <%#: String.Format("{0:c}", ((Convert.ToDouble(Item.Quantity)) * Convert.ToDouble(Item.Product.UnitPrice))) %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remove Item">
                <ItemTemplate>
                    <asp:CheckBox id="Remove" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <div>
        <p></p>
        <strong>
            <asp:Label ID="LabelTotalText" runat="server" Text="Order Total:">
            </asp:Label>
            <asp:Label ID="lblTotal" runat="server" EnableViewState="false">
            </asp:Label>
        </strong>
    </div>
    <br />
    <table>
        <tr>
            <td>
                <asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click"/>&nbsp;
            </td>
            <td>
                <!-- Checkout Placeholder -->
                <%--<asp:ImageButton ID="CheckoutImageButton" runat="server" ImageUrl="https://www.paypal.com/en_US/i/btn/btn_xpressCheckout.gif" Width="145" AlternateText="Check out with PayPal" OnClick="CheckoutBtn_Click" BackColor="Transparent" BorderWidth="0" />--%>
               <asp:Button ID="CheckoutButton" runat="server" Text="Check out" OnClick="CheckoutBtn_Click"/>&nbsp;
            </td>
            <td>
                <asp:Button ID="Continue" runat="server" Text="Continue Shopping" OnClick="Continue_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
