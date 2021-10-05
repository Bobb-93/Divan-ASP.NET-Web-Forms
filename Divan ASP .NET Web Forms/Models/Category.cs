using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Divan_ASP.NET_Web_Forms.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID
        {
            get;
            set;
        }

        [Required, StringLength(100), Display(Name = "Name")]
        public string CategoryName
        {
            get;
            set;
        }

        [Display(Name = "Category Description")]
        public string Description
        {
            get;
            set;
        }

        public virtual ICollection<Product> Products
        {
            get;
            set;
        }
    }
}