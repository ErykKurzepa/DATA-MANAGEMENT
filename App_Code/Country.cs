using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;

/// <summary>
/// Summary description for User
/// </summary>

namespace YASA_PL
{

    [MetadataType(typeof(CountryMetadata))]
    [DisplayName("Państwo")]
    public partial class Country
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;
        
    }

    public class CountryMetadata
    {
        [UIHint("UniqueCountryName")]
        [Display(Name = "Nazwa")]
        public object Name;

        [Display(Name = "Klienci")]
        public object Customers;

        [Display(Name = "Dostawcy")]
        public object Contractors;

      

    }

   
}