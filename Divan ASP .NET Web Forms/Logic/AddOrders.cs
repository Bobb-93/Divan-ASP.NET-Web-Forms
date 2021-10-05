using System;
using Divan_ASP.NET_Web_Forms.Models;

namespace Divan_ASP.NET_Web_Forms.Logic
{
    public class AddOrders
    {
        public bool AddOrder(string orderId, DateTime orderDate, string userName, string firstName, string lastName, string address, string city, string state, string postalCode, string country, string phone, string email, decimal total, MethodOfPayment paymentMethod, string paymentTransactionId, bool hasBeenShipped)
        {
            var myOrder = new Order();
            myOrder.OrderId = orderId;
            myOrder.OrderDate = orderDate;
            myOrder.UserName = userName;
            myOrder.FirstName = firstName;
            myOrder.LastName = lastName;
            myOrder.Address = address;
            myOrder.City = city;
            myOrder.State = state;
            myOrder.PostalCode = postalCode;
            myOrder.Country = country;
            myOrder.Phone = phone;
            myOrder.Email = email;
            myOrder.Total = total;
            myOrder.PaymentMethod = paymentMethod;
            myOrder.PaymentTransactionId = paymentTransactionId;
            myOrder.HasBeenShipped = false;

            //myOrder.UserName = Convert.ToDouble(ProductPrice);
            //myOrder.CategoryID = Convert.ToInt32(ProductCategory);

            using (ProductContext _db = new ProductContext())
            {
                //Add product to DB
                _db.Orders.Add(myOrder);
                _db.SaveChanges();
            }

            //Success
            return true;
        }
    }
}
