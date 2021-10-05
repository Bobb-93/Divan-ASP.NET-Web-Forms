using System;

namespace Divan_ASP.NET_Web_Forms.Models
{
    public class OrderDetail
    {
        public int OrderDetailId
        {
            get;
            set;
        }

        public string OrderId
        {
            get;
            set;
        }

        public string Username
        {
            get;
            set;
        }

        public int ProductId
        {
            get;
            set;
        }

        public int Quantity
        {
            get;
            set;
        }

        public double? UnitPrice
        {
            get;
            set;
        }
    }
}