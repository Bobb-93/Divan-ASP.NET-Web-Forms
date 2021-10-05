using System;
using System.Web;
using Divan_ASP.NET_Web_Forms.Logic;
using Divan_ASP.NET_Web_Forms.Models;

namespace Divan_ASP.NET_Web_Forms.Checkout
{
    public partial class CheckoutStart : System.Web.UI.Page
    {
        public static string orderId;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckoutConfirm_Click(object sender, EventArgs e)
        {
            //Session["userCheckoutCompleted"] = "true";
            string firstName = FirstNameTextBox.Text;
            string lastName = LastNameTextBox.Text;
            string country = CountryDropDown.SelectedValue;
            string state = StateTextBox.Text;
            string city = CityTextBox.Text;
            string postalCode = PostalCodeTextBox.Text;
            string address = AddressTextBox.Text;
            string phone = PhoneTextBox.Text;
            //string userName = HttpContext.Current.User.ToString();
            //string userName = User.ToString();
            string userName = HttpContext.Current.User.Identity.Name.ToString();
            string paymentMethodString = PaymentMethod.SelectedValue;

            decimal total = ShoppingCart.cartTotal;

            //MethodOfPayment paymentMethod = MethodOfPayment.CashOnDelivery;
            MethodOfPayment paymentMethod = (MethodOfPayment)Enum.Parse(typeof(MethodOfPayment), paymentMethodString, true);

            //Create Order
            //AddOrders
            AddOrders order = new AddOrders();

            //Generate orderId - not working as intended
            int randomNumber1, randomNumber2, randomNumber3, randomNumber4;
            int min = 0;
            int max = 9;
            char randomChar1, randomChar2;
            string chars = "$%#@!*abcdefghijklmnopqrstuvwxyz1234567890?;:ABCDEFGHIJKLMNOPQRSTUVWXYZ^&";

            Random r1 = new Random();
            Random r2 = new Random();
            Random r3 = new Random();
            Random r4 = new Random();

            randomNumber1 = r1.Next(min, max);
            randomNumber2 = r2.Next(min, max);
            
            randomNumber3 = r3.Next(min, chars.Length);
            randomChar1 = chars[randomNumber3];

            randomNumber4 = r4.Next(min, chars.Length);
            randomChar2 = chars[randomNumber4];


            char charNumber1, charNumber2;
            charNumber1 = (char)randomNumber1;
            charNumber2 = (char)randomNumber2;

            //orderId = randomChar1.ToString() + charNumber1.ToString() + randomChar2.ToString() + charNumber2.ToString();

            //another idea. Probably works better
            Random randomGenerator = new Random();
            int randomNumber = randomGenerator.Next(0, 10000000);

            orderId = randomNumber.ToString();

            //end of another idea

            order.AddOrder(orderId, DateTime.Now, userName, firstName, lastName, address, city, state, postalCode, country, phone, userName, total, paymentMethod, orderId, false);

            //Empty Cart

            ShoppingCartActions sca = new ShoppingCartActions();
            sca.EmptyCart();
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");
        }

        protected void Continue_Click(object sender, EventArgs e)
        {

            Response.Redirect("/ProductList.aspx");
        }

    }
}