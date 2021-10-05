using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;


namespace Divan_ASP.NET_Web_Forms.Models
{
    public enum MethodOfPayment
    {
        BankPayment,
        CashOnDelivery
    }

    public class Order
    {
        public string OrderId
        {
            get;
            set;
        }

        public DateTime OrderDate
        {
            get;
            set;
        }

        public string UserName
        {
            get;
            set;
        }

        [Required(ErrorMessage = "First Name is Required!")]
        [DisplayName("First Name")]
        [StringLength(160)]
        public string FirstName
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Last Name is Required!")]
        [DisplayName("Last Name")]
        [StringLength(160)]
        public string LastName
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Address is Required!")]
        [StringLength(70)]
        public string Address
        {
            get;
            set;
        }

        [Required(ErrorMessage = "City is Required!")]
        [StringLength(40)]
        public string City
        {
            get;
            set;
        }

        [Required(ErrorMessage = "State is Required!")]
        [StringLength(40)]
        public string State
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Postal Code is Required!")]
        [DisplayName("Postal Code")]
        [StringLength(10)]
        public string PostalCode
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Country is Required!")]
        [StringLength(40)]
        public string Country
        {
            get;
            set;
        }

        [StringLength(24)]
        public string Phone
        {
            get;
            set;
        }

        [Required(ErrorMessage = "Email Address is Required!")]
        [DisplayName("Email Address")]
        [RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}", ErrorMessage = "Email is Not Valid")]
        [DataType(DataType.EmailAddress)]
        public string Email
        {
            get;
            set;
        }

        [ScaffoldColumn(false)]
        public decimal Total
        {
            get;
            set;
        }

        public MethodOfPayment PaymentMethod
        {
            get;
            set;
        }

        [ScaffoldColumn(false)]
        public string PaymentTransactionId
        {
            get;
            set;
        }

        [ScaffoldColumn(false)]
        public bool HasBeenShipped
        {
            get;
            set;
        }

        public List<OrderDetail> OrderDetails
        {
            get;
            set;
        }
    }
}