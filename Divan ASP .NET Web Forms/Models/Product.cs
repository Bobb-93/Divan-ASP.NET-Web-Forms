using System.ComponentModel.DataAnnotations;

namespace Divan_ASP.NET_Web_Forms.Models
{
    public class Product
    {
        [ScaffoldColumn(false)]
        public int ProductID
        {
            get;
            set;
        }

        [Required, StringLength(100), Display(Name = "Name")]
        public string ProductName
        {
            get;
            set;
        }

        //[Required, StringLength(100), Display(Name = "Manufacturer")]
        //public string ManufacturerName
        //{
        //    get;
        //    set;
        //}

        [Required, StringLength(10000), Display(Name = "Product Description"), DataType(DataType.MultilineText)]
        public string Description
        {
            get;
            set;
        }

        [Required]
        public string ImagePath
        {
            get;
            set;
        }

        [Required, Display(Name = "Price")]
        public double? UnitPrice
        {
            get;
            set;
        }

        [Required]
        public int? CategoryID
        {
            get;
            set;
        }

        public virtual Category Category
        {
            get;
            set;
        }
    }
}