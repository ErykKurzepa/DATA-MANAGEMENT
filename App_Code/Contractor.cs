using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for User
/// </summary>

namespace YASA_PL
{

    [MetadataType(typeof(ContractorMetadata))]
    [DisplayName("Dostawcy")]
    public partial class Contractor
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        public override string ToString()
        {
            return "DT" + Id + ": " + Name;

        }


    }

    public class ContractorMetadata
    {
        [UIHint("Id_Contractor")]
        [Display(Name = "ID", Order = 1, AutoGenerateField = true)]
        public object Id;

        [UIHint("UniqueContractorName")]
        [Display(Name = "Nazwa", Description = "Wpisz pełną nazwę firmy", Order = 1)]
        public object Name;

        [Display(Name = "Adres", Order = 3)]
        public object Address;

        [Display(Name = "Dodał / modyfikował", AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]    
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji")]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Miasto", Order = 2)]
        public object City;

        [Display(Name = "Kod pocztowy", Order = 3)]
        public object Postal_Code;

        [Required(ErrorMessage = "Numer telefonu jest wymagany")]
        [TelephoneValidator(ErrorMessage = "Numer telefonu może zawierać wyłącznie liczby.")]
        [Display(Name = "Telefon", Order = 8)]
        public object Phone;

        [UIHint("EmailAddress")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage = "Adres e-mail ma niperawidłowy format")]
        [Display(Name = "E-mail", Order = 6)]
        public object Email;

        [UIHint("Url")]
        [Display(Name = "Strona www", Order = 7)]
        public object Www;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 9)]
        public object Description;

        [DisallowNavigation(true)]
        [Display(Name = "Branża", Order = 1)]
        public object Contractor_category { get; set; }

        [Display(Name = "Zamówienie", AutoGenerateField = false)]
        public object Contractor_Order;

        [Display(Name = "Pracownicy", AutoGenerateField = false)]
        public object Contractor_Contact;

        [DisallowNavigation(true)]
        [Display(Name = "Państwo", Order = 4)]
        public object Country { get; set; }

        [Display(Name = "Komentarze", AutoGenerateField = false)]
        public object Comments;


    }



   
}