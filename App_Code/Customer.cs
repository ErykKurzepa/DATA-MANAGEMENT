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

    [MetadataType(typeof(CustomerMetadata))]
    [DisplayName("Klienci")]
    public partial class Customer
    {
        public override string ToString()
        {
            return "KL" + Id + ": " + Name;

        }
        
    }

    public class CustomerMetadata
    {
        [UIHint("Id_Customer")]
        [Display(Name = "ID", Order = 1, AutoGenerateField = true)]
        public object Id;

        [CapitalLetterStartValidator(ErrorMessage = "Nazwa klienta musi zaczynać się od dużej litery.")]
        [UIHint("UniqueCustomerName")]
        [Display(Name = "Nazwa", Order=1, Description="Wpisz pełną nazwę firmy")]
        public object Name;

        [Display(Name = "Adres", Order = 2)]
        public object Address;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter=false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit:false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [CapitalLetterStartValidator(ErrorMessage = "Miasto musi zaczynać się od dużej litery.")]
        [Display(Name = "Miasto", Order = 4)]
        public object City;

        [Display(Name = "Kod pocztowy", Order = 3)]
        public object Postal_Code;

        [Required(ErrorMessage = "Numer telefonu jest wymagany")]
        [TelephoneValidator(ErrorMessage = "Numer telefonu może zawierać wyłącznie liczby.")]
        [Display(Name = "Telefon")]
        public object Phone;

        [UIHint("EmailAddress")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage = "Adres e-mail ma niperawidłowy format")]
        [Display(Name = "E-mail")]
        public object Email;

        [UIHint("Url")]
        [Display(Name = "Strona www")]
        public object Www;

        [UIHint("MultilineText")]
        [Display(Name = "Opis")]
        public object Description;

        [Display(Name = "Pracownicy", AutoGenerateField = false)]
        public object Customer_Contacts;

        [Display(Name = "Produkty", AutoGenerateField=false)]
        public object Customer_Products;

        [Display(Name = "Części", AutoGenerateField=false)]
        public object Customer_Parts;

        [DisallowNavigation(true)]
        [Display(Name = "Państwo", Order = 5)]
        public object Country1 { get; set; }
      
        //[Display(Name = "Państwo", Order = 5)]
        //public object Country1;

        [Display(Name = "Komentarze", AutoGenerateField=false)]
        public object Comments;

    }

   
}