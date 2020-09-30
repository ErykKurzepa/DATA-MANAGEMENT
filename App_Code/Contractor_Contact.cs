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

    [MetadataType(typeof(Contractor_ContactMetadata))]
    [DisplayName("Pracownicy dostawców")]
    public partial class Contractor_Contact
    {
        //[DisplayName("Klienci")]
        //public object CustomerSet;

        public Contractor_Contact()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public override string ToString()
        {
            return F_Name + " " + L_Name;

        }


        
    }

    public class Contractor_ContactMetadata
    {
         [CapitalLetterStartValidator(ErrorMessage = "Imię musi zaczynać się od dużej litery.")]
        [Display(Name = "Imię", Order=1)]
        public object F_Name;

        [CapitalLetterStartValidator(ErrorMessage = "Nazwisko musi zaczynać się od dużej litery.")]
        [Display(Name = "Nazwisko", Order = 2)]
        public object L_Name;

        [Display(Name = "Stanowisko", Order = 4)]
        public object Position;

         [TelephoneValidator(ErrorMessage = "Numer telefonu może zawierać wyłącznie liczby.")]
        [Display(Name = "Telefon", Order = 6)]
         public object W_Phone_No;

         [TelephoneValidator(ErrorMessage = "Numer telefonu może zawierać wyłącznie liczby.")]
        [Display(Name = "Telefon kom", Order = 7)]
        public object M_Phone_No;


        [UIHint("EmailAddress")]
        [RegularExpression(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*", ErrorMessage = "Adres e-mail ma niperawidłowy format")]
        [Display(Name = "E-mail", Order = 5)]
        public object Email;

        [Display(Name = "Dział", Order = 3)]
        public object Department;

        [UIHint("MultilineText")]
        [Display(Name = "Opis", Order = 8)]
        public object Description;

        [Display(Name = "Dodał / modyfikował", Order = 10, AutoGenerateFilter = false)]
        [Editable(allowEdit: false)]
        public object User;

        [UIHint("DateTime")]
        [Editable(allowEdit: false)]
        [Display(Name = "Data dodania / modyfikacji", Order = 9)]
        [DisplayFormat(DataFormatString = "{0:d}", ApplyFormatInEditMode = true)]
        public object Date_created_modified;

        [Display(Name = "Firma", Order=2)]
        public object Contractor;

        [Display(Name = "Komentarze", AutoGenerateField = false)]
        public object Comments;

       

    }

   
}